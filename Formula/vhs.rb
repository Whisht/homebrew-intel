class Vhs < Formula
  desc "Your CLI home video recorder - write terminal GIFs as code"
  homepage "https://github.com/charmbracelet/vhs"
  url "https://github.com/charmbracelet/vhs/releases/download/v0.12.1/vhs_0.12.1_Darwin_x86_64.tar.gz"
  version "0.12.1"
  sha256 "24596d14673251496e37f5cd984ad0a1d864f3d1c4ec1f2eca251f6b9fe6367d"

  def install
    bin.install "vhs"
    man1.install Dir["manpages/*.1*"]
    zsh_completion.install "completions/vhs.zsh" if File.exist?("completions/vhs.zsh")
    bash_completion.install "completions/vhs.bash" if File.exist?("completions/vhs.bash")
    fish_completion.install "completions/vhs.fish" if File.exist?("completions/vhs.fish")
  end
end
