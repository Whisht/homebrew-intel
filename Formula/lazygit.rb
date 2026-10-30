class Lazygit < Formula
  desc "Simple terminal UI for git commands"
  homepage "https://github.com/jesseduffield/lazygit"
  url "https://github.com/jesseduffield/lazygit/releases/download/v0.66.2/lazygit_0.66.2_darwin_x86_64.tar.gz"
  version "0.66.2"
  sha256 "de5d3771e4befa6fe17590e21445614998adc1ef34a71f4003df6764247517ab"

  def install
    bin.install "lazygit"
  end
end
