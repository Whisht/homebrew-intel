# homebrew-intel

English | [简体中文](./README_zh.md)

A Homebrew Tap dedicated to Intel Macs (`x86_64`). Since Homebrew officially dropped bottle support for macOS Intel (`x86_64`), installing or upgrading formulae from `homebrew-core` often triggers lengthy local compilation from source.

This Tap fetches official prebuilt `x86_64-apple-darwin` binaries directly from upstream GitHub Releases. For upstream projects that do not publish macOS Intel release binaries (such as `eza`, `btop`, `git-delta`, `git`, and `wget`), this repository's GitHub Actions workflow automatically cross-compiles standalone binaries targeting `macOS 11.0+ x86_64` and publishes them to this repository's Releases—completely eliminating local compilation and heavy `lib*` dependency chains on Intel Macs.

All formulae in `Formula/` are automatically checked and updated daily via GitHub Actions.

## Usage

### 1. Add the Tap
```bash
brew tap whisht/intel
```

### 2. Install or Replace Existing Packages
If you previously installed the same package from `homebrew-core`, uninstall it first (or specify this Tap explicitly):
```bash
# Install prebuilt Intel binaries directly (zero local compilation)
brew install whisht/intel/eza
brew install whisht/intel/ripgrep
brew install whisht/intel/gh
brew install whisht/intel/yazi
```

### 3. Daily Updates
```bash
brew update && brew upgrade
```

## Included Packages (54 Total, Zero `lib*` Dependencies)

### 1. Core & Daily CLI Tools
- `bat` (`sharkdp/bat`) — `cat(1)` clone with syntax highlighting and Git integration
- `carapace` (`carapace-sh/carapace-bin`) — Multi-shell multi-command argument completer
- `curl` (`stunnel/static-curl`) — Static standalone `x86_64` build with HTTP/3, Zstd, and Brotli (zero dynamic library dependencies)
- `eza` (`eza-community/eza`) — Modern replacement for `ls` (cloud-built standalone `x86_64` binary, no `libgit2` dependency)
- `fish` (`fish-shell/fish-shell`) — Official Universal prebuilt binary with embedded PCRE2 and terminfo (zero external library dependencies)
- `fzf` (`junegunn/fzf`) — Command-line fuzzy finder written in Go
- `gh` (`cli/cli`) — GitHub’s official command-line tool
- `git` (`git/git`) — Distributed revision control system (cloud-built standalone `x86_64` binary, no `gettext`/`pcre2` dependencies)
- `git-lfs` (`git-lfs/git-lfs`) — Git extension for versioning large files
- `jj` (`jj-vcs/jj`) — Git-compatible DVCS that is both simple and powerful
- `pandoc` (`jgm/pandoc`) — Swiss-army knife of markup format conversion
- `ripgrep` (`BurntSushi/ripgrep`) — Ultra-fast recursive search tool (`rg`)
- `starship` (`starship/starship`) — Cross-shell prompt for astronauts
- `wget` (`mirror/wget`) — Internet file retriever (cloud-built standalone `x86_64` binary statically linked with LibreSSL)
- `yazi` (`sxyazi/yazi`) — Blazing fast terminal file manager written in Rust
- `zoxide` (`ajeetdsouza/zoxide`) — Smarter `cd` command that learns your habits

### 2. Omarchy Modern Shell Tools & TUIs
Curated from [Omarchy Shell Tools](https://omarchy.org/manual/shell-tools/) and [Omarchy TUIs](https://omarchy.org/manual/tuis/):
- `fd` (`sharkdp/fd`) — Simple, fast, and user-friendly alternative to `find`
- `try` (`tobi/try`) — Ephemeral experiment directory manager (`try`)
- `lazygit` (`jesseduffield/lazygit`) — Simple terminal UI for Git commands
- `lazydocker` (`jesseduffield/lazydocker`) — Terminal UI for Docker and `docker-compose`
- `btop` (`aristocratos/btop`) — Resource monitor for CPU, memory, disks, network, and processes (cloud-built standalone `x86_64` package)
- `herdr` (`herdrdev/herdr`) — Persistent terminal workspace and session multiplexer for coding agents
- `cliamp` (`bjarneo/cliamp`) — Retro Winamp-inspired terminal music player
- `fastfetch` (`fastfetch-cli/fastfetch`) — Fast system information tool written in C
- `zellij` (`zellij-org/zellij`) — Modern terminal workspace and multiplexer
- `neovim` (`neovim/neovim`) — Vim-fork focused on extensibility and usability
- `gum` (`charmbracelet/gum`) — Tool for glamorous interactive shell scripts
- `glow` (`charmbracelet/glow`) — Render Markdown on the CLI
- `jq` (`jqlang/jq`) — Lightweight and flexible command-line JSON processor
- `dust` (`bootandy/dust`) — More intuitive version of `du` in Rust
- `duf` (`muesli/duf`) — Disk Usage/Free utility (`df` alternative)
- `bottom` (`ClementTsang/bottom`) — Cross-platform graphical process/system monitor (`btm`)
- `hyperfine` (`sharkdp/hyperfine`) — Command-line benchmarking tool
- `xh` (`ducaale/xh`) — Friendly and fast tool for sending HTTP requests
- `tealdeer` (`tealdeer-rs/tealdeer`) — Very fast Rust implementation of `tldr`

### 3. dlvhdr's CLI Gems
Curated from [dlvhdr's List of CLI Gems](https://www.dlvhdr.me/posts/cli-tools):
- `atuin` (`atuinsh/atuin`) — Magical shell history with encrypted multi-device sync
- `direnv` (`direnv/direnv`) — Load and unload environment variables depending on the current directory
- `serpl` (`yassinebridi/serpl`) — VS Code-style global search and replace TUI
- `procs` (`dalance/procs`) — Modern replacement for `ps`
- `sd` (`chmln/sd`) — Intuitive find & replace CLI (`sed` alternative)
- `curlie` (`rs/curlie`) — The power of `curl`, the ease of use of `httpie`
- `jnv` (`ynqa/jnv`) — Interactive JSON navigator and `jq` filter editor
- `gojq` (`itchyny/gojq`) — Pure Go implementation of `jq`
- `fx` (`antonmedv/fx`) — Terminal JSON viewer and processor
- `jless` (`PaulJuliusMartinez/jless`) — Command-line JSON pager
- `jqp` (`noahgorstein/jqp`) — TUI playground to experiment with `jq`
- `git-delta` (`dandavison/delta`) — Syntax-highlighting pager for `git`, `diff`, and `grep` output (cloud-built `x86_64` binary)
- `diffnav` (`dlvhdr/diffnav`) — Git diff pager based on `delta` with a file tree
- `gh-dash` (`dlvhdr/gh-dash`) — Rich terminal UI dashboard for GitHub PRs and issues
- `svu` (`caarlos0/svu`) — Semantic Version Utility
- `sesh` (`joshmedeski/sesh`) — Smart terminal session manager for `tmux`
- `k9s` (`derailed/k9s`) — Kubernetes CLI to manage your clusters in style
- `freeze` (`charmbracelet/freeze`) — Generate images of code and terminal output
- `vhs` (`charmbracelet/vhs`) — Write terminal GIFs as code

## How to Add a New Package

Add an entry to [`packages.json`](./packages.json) and push to the `main` branch. GitHub Actions (or running `python3 scripts/update_formulas.py <name>` locally) will automatically resolve the latest release asset, compute its SHA256 digest, and generate `Formula/<name>.rb`.
