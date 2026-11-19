class GitDelta < Formula
  desc "Syntax-highlighting pager for git, diff, and grep output"
  homepage "https://github.com/dandavison/delta"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/delta-0.21.1-x86_64-apple-darwin.tar.gz"
  version "0.21.1"
  sha256 "d8d8e2869c2fe72074035e4c8bd258639a2dd23b1c32af6110b7115f100c15a2"

  def install
    bin.install "delta"
  end
end
