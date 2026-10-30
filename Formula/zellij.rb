class Zellij < Formula
  desc "Pluggable terminal workspace, with terminal multiplexer as the base feature"
  homepage "https://github.com/zellij-org/zellij"
  url "https://github.com/zellij-org/zellij/releases/download/v0.45.1/zellij-x86_64-apple-darwin.tar.gz"
  version "0.45.1"
  sha256 "8e8bea22737d1652278c51fc5c26c7c22c9855d0ebb9634a84b8873823093114"

  def install
    bin.install "zellij"
  end
end
