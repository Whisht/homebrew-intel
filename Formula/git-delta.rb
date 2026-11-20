class GitDelta < Formula
  desc "Syntax-highlighting pager for git, diff, and grep output"
  homepage "https://github.com/dandavison/delta"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/delta-0.21.2-x86_64-apple-darwin.tar.gz"
  version "0.21.2"
  sha256 "37dbdf63ce8e6bd3bcc8a44a05fecc388f79a9b6f7226694a3d19e716e6d1dd3"

  def install
    bin.install "delta"
  end
end
