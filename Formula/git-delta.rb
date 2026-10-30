class GitDelta < Formula
  desc "Syntax-highlighting pager for git, diff, and grep output"
  homepage "https://github.com/dandavison/delta"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/delta-0.20.1-x86_64-apple-darwin.tar.gz"
  version "0.20.1"
  sha256 "4d6dd64a6b19ab5cced2231649e987c37c620fc8bf836f26b05a35a9be06c2c5"

  def install
    bin.install "delta"
  end
end
