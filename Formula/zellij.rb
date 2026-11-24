class Zellij < Formula
  desc "Pluggable terminal workspace, with terminal multiplexer as the base feature"
  homepage "https://github.com/zellij-org/zellij"
  url "https://github.com/zellij-org/zellij/releases/download/v0.46.1/zellij-x86_64-apple-darwin.tar.gz"
  version "0.46.1"
  sha256 "39230d4f8306643c6051e76884bb5b1f038e0d41291862da62c9b1830c9a1504"

  def install
    bin.install "zellij"
  end
end
