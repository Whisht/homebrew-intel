class GhDash < Formula
  desc "Rich terminal UI for GitHub pull requests and issues"
  homepage "https://github.com/dlvhdr/gh-dash"
  url "https://github.com/dlvhdr/gh-dash/releases/download/v4.26.2/gh-dash_v4.26.2_darwin-amd64"
  version "4.26.2"
  sha256 "6b8d26b4d01d7b9f96930b7aaafd145a91a9af94332199c44e20b5a3e8e5f1dc"

  def install
    bin.install "gh-dash_v4.26.2_darwin-amd64" => "gh-dash"
  end
end
