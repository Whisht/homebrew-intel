class Freeze < Formula
  desc "Generate images of code and terminal output"
  homepage "https://github.com/charmbracelet/freeze"
  url "https://github.com/charmbracelet/freeze/releases/download/v0.2.2/freeze_0.2.2_Darwin_x86_64.tar.gz"
  version "0.2.2"
  sha256 "7ba01bc3f7f255bee2fe84847e8beeb1caa84914a49f4cf32e0147693d5e385f"

  def install
    bin.install "freeze"
  end
end
