class Zellij < Formula
  desc "Pluggable terminal workspace, with terminal multiplexer as the base feature"
  homepage "https://github.com/zellij-org/zellij"
  url "https://github.com/zellij-org/zellij/releases/download/v0.46.0/zellij-x86_64-apple-darwin.tar.gz"
  version "0.46.0"
  sha256 "e3b6197af04b286f74f7a9f5f519e5a8cf048be65f0371a32b0d60abac97384a"

  def install
    bin.install "zellij"
  end
end
