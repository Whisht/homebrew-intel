#!/usr/bin/env python3
"""Automatically fetch latest Intel macOS prebuilt releases from GitHub and generate Homebrew Formulas."""

import hashlib
import json
import os
import re
import subprocess
import sys
import urllib.request
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent
PACKAGES_FILE = ROOT_DIR / "packages.json"
FORMULA_DIR = ROOT_DIR / "Formula"
GITHUB_TOKEN = os.environ.get("GITHUB_TOKEN", "")
SELF_REPO = os.environ.get("GITHUB_REPOSITORY", "Whisht/homebrew-intel")


def github_api(endpoint: str) -> dict:
    """Fetch JSON from GitHub API using GITHUB_TOKEN or local gh CLI."""
    url = f"https://api.github.com/{endpoint.lstrip('/')}"
    if GITHUB_TOKEN:
        req = urllib.request.Request(url)
        req.add_header("Accept", "application/vnd.github+json")
        req.add_header("Authorization", f"Bearer {GITHUB_TOKEN}")
        req.add_header("User-Agent", "homebrew-intel-updater")
        with urllib.request.urlopen(req, timeout=30) as resp:
            return json.loads(resp.read().decode("utf-8"))

    try:
        res = subprocess.run(
            ["gh", "api", endpoint],
            capture_output=True,
            text=True,
            check=True,
        )
        return json.loads(res.stdout)
    except Exception:
        req = urllib.request.Request(url)
        req.add_header("Accept", "application/vnd.github+json")
        req.add_header("User-Agent", "homebrew-intel-updater")
        with urllib.request.urlopen(req, timeout=30) as resp:
            return json.loads(resp.read().decode("utf-8"))


def fetch_latest_release(repo: str) -> dict:
    return github_api(f"repos/{repo}/releases/latest")


def fetch_release_by_tag(repo: str, tag: str) -> dict:
    return github_api(f"repos/{repo}/releases/tags/{tag}")


def compute_url_sha256(url: str) -> str:
    h = hashlib.sha256()
    req = urllib.request.Request(url, headers={"User-Agent": "homebrew-intel-updater"})
    with urllib.request.urlopen(req, timeout=120) as resp:
        while chunk := resp.read(65536):
            h.update(chunk)
    return h.hexdigest().lower()


def compute_sha256(asset: dict, all_assets: list[dict]) -> str:
    """Resolve SHA256 from GitHub asset digest, companion .sha256 file, or stream download."""
    digest = asset.get("digest") or ""
    if digest.startswith("sha256:"):
        return digest.removeprefix("sha256:").strip().lower()

    asset_name = asset["name"]
    for candidate in (f"{asset_name}.sha256", f"{asset_name}.sha256sum"):
        for other in all_assets:
            if other["name"] == candidate:
                req = urllib.request.Request(
                    other["browser_download_url"],
                    headers={"User-Agent": "homebrew-intel-updater"},
                )
                with urllib.request.urlopen(req, timeout=30) as resp:
                    text = resp.read().decode("utf-8").strip()
                    match = re.search(r"\b([a-fA-F0-9]{64})\b", text)
                    if match:
                        return match.group(1).lower()

    return compute_url_sha256(asset["browser_download_url"])


def to_class_name(name: str) -> str:
    return "".join(part.capitalize() for part in name.replace("_", "-").split("-"))


def normalize_version(tag: str, pkg_name: str) -> str:
    v = tag.strip()
    if v.lower().startswith(f"{pkg_name.lower()}-"):
        v = v[len(pkg_name) + 1 :]
    if v.startswith("v"):
        v = v[1:]
    return v


def build_install_lines(pkg: dict, version: str, tag: str) -> list[str]:
    lines: list[str] = []
    if pkg.get("install_prefix"):
        lines.append('prefix.install Dir["*"]')
        return lines

    for src, dst in pkg.get("bin_map", {}).items():
        formatted_src = src.format(version=version, tag=tag)
        lines.append(f'bin.install "{formatted_src}" => "{dst}"')

    for b in pkg.get("bin", []):
        lines.append(f'bin.install "{b}"')

    for m in pkg.get("man1", []):
        lines.append(f'man1.install "{m}" if File.exist?("{m}")')

    if man1_glob := pkg.get("man1_glob"):
        lines.append(f'man1.install Dir["{man1_glob}"]')

    if man5_glob := pkg.get("man5_glob"):
        lines.append(f'man5.install Dir["{man5_glob}"]')

    for z in pkg.get("zsh_completion", []):
        lines.append(f'zsh_completion.install "{z}" if File.exist?("{z}")')

    for b in pkg.get("bash_completion", []):
        lines.append(f'bash_completion.install "{b}" if File.exist?("{b}")')

    for f in pkg.get("fish_completion", []):
        lines.append(f'fish_completion.install "{f}" if File.exist?("{f}")')

    return lines


def generate_formula(pkg: dict, version: str, tag: str, download_url: str, sha256: str) -> str:
    class_name = to_class_name(pkg["name"])
    desc = pkg.get("desc", f"Prebuilt Intel macOS binary for {pkg['name']}").replace('"', '\\"')
    homepage = pkg.get("homepage", f"https://github.com/{pkg['repo']}")
    install_body = "\n    ".join(build_install_lines(pkg, version, tag))

    return f'''class {class_name} < Formula
  desc "{desc}"
  homepage "{homepage}"
  url "{download_url}"
  version "{version}"
  sha256 "{sha256}"

  def install
    {install_body}
  end
end
'''


def main() -> None:
    FORMULA_DIR.mkdir(parents=True, exist_ok=True)
    packages = json.loads(PACKAGES_FILE.read_text(encoding="utf-8"))
    only_names = set(sys.argv[1:])
    self_releases_cache: dict[str, dict] = {}

    for pkg in packages:
        name = pkg["name"]
        if only_names and name not in only_names:
            continue
        repo = pkg["repo"]

        if pkg.get("version_from_self_release"):
            self_tag = pkg["self_hosted_release"]
            if self_tag not in self_releases_cache:
                try:
                    self_releases_cache[self_tag] = fetch_release_by_tag(SELF_REPO, self_tag)
                except Exception:
                    self_releases_cache[self_tag] = {"assets": []}
            assets = self_releases_cache[self_tag].get("assets", [])
            prefix = f"{name}-v"
            suffix = "-x86_64-apple-darwin.tar.gz"
            matched_asset = next(
                (a for a in assets if a["name"].startswith(prefix) and a["name"].endswith(suffix)),
                None,
            )
            if not matched_asset:
                print(f"[WARN] Self-hosted asset '{prefix}*{suffix}' not found for {name}")
                continue
            tag = matched_asset["name"][len(f"{name}-") : -len(suffix)]
            version = normalize_version(tag, name)
            formula_path = FORMULA_DIR / f"{name}.rb"
            if formula_path.exists() and f'version "{version}"' in formula_path.read_text(encoding="utf-8"):
                print(f"[SKIP] {name} is already up to date ({version})")
                continue
            print(f"[UPDATE] {name} -> {version} ({matched_asset['name']})")
            sha256 = compute_sha256(matched_asset, assets)
            download_url = matched_asset["browser_download_url"]
            formula_content = generate_formula(pkg, version, tag, download_url, sha256)
            formula_path.write_text(formula_content, encoding="utf-8")
            continue

        try:
            release = fetch_latest_release(repo)
        except Exception as e:
            print(f"[ERROR] Failed to fetch release for {name} ({repo}): {e}")
            continue

        tag = release["tag_name"]
        version = normalize_version(tag, name)
        formula_path = FORMULA_DIR / f"{name}.rb"

        if formula_path.exists():
            current_text = formula_path.read_text(encoding="utf-8")
            if f'version "{version}"' in current_text:
                print(f"[SKIP] {name} is already up to date ({version})")
                continue

        if pkg.get("source_tarball"):
            download_url = f"https://github.com/{repo}/archive/refs/tags/{tag}.tar.gz"
            print(f"[UPDATE] {name} -> {version} (source tarball)")
            sha256 = compute_url_sha256(download_url)
            formula_content = generate_formula(pkg, version, tag, download_url, sha256)
            formula_path.write_text(formula_content, encoding="utf-8")
            continue

        expected_asset = pkg["asset_pattern"].format(version=version, tag=tag)

        if self_tag := pkg.get("self_hosted_release"):
            if self_tag not in self_releases_cache:
                try:
                    self_releases_cache[self_tag] = fetch_release_by_tag(SELF_REPO, self_tag)
                except Exception:
                    self_releases_cache[self_tag] = {"assets": []}
            assets = self_releases_cache[self_tag].get("assets", [])
        else:
            assets = release.get("assets", [])

        matched_asset = next((a for a in assets if a["name"] == expected_asset), None)
        if not matched_asset:
            print(f"[WARN] Asset '{expected_asset}' not found for {name}@{tag}")
            continue

        print(f"[UPDATE] {name} -> {version} ({expected_asset})")
        sha256 = compute_sha256(matched_asset, assets)
        download_url = matched_asset["browser_download_url"]
        formula_content = generate_formula(pkg, version, tag, download_url, sha256)
        formula_path.write_text(formula_content, encoding="utf-8")


if __name__ == "__main__":
    main()
