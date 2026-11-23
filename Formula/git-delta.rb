class GitDelta < Formula
  desc "Syntax-highlighting pager for git, diff, and grep output"
  homepage "https://github.com/dandavison/delta"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/delta-0.22.0-x86_64-apple-darwin.tar.gz"
  version "0.22.0"
  sha256 "31cc1907ddd27811d40b182f97b8db5866b912896f12399faef344bdc03f5fdb"

  def install
    bin.install "delta"
  end
end
