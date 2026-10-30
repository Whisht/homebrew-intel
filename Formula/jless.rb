class Jless < Formula
  desc "Command-line JSON pager"
  homepage "https://github.com/PaulJuliusMartinez/jless"
  url "https://github.com/PaulJuliusMartinez/jless/releases/download/v0.9.0/jless-v0.9.0-x86_64-apple-darwin.zip"
  version "0.9.0"
  sha256 "8228d44b918af7e904a75df10f85dabf29cdedac17156d870c80968e6836b04f"

  def install
    bin.install "jless"
  end
end
