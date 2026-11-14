class GhDash < Formula
  desc "Rich terminal UI for GitHub pull requests and issues"
  homepage "https://github.com/dlvhdr/gh-dash"
  url "https://github.com/dlvhdr/gh-dash/releases/download/v4.26.3/gh-dash_v4.26.3_darwin-amd64"
  version "4.26.3"
  sha256 "b77a5028cb7198f35c0f5056f965a1ebe0f17d13e8ff34c653940e7f3cda47bc"

  def install
    bin.install "gh-dash_v4.26.3_darwin-amd64" => "gh-dash"
  end
end
