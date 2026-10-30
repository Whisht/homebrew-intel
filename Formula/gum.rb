class Gum < Formula
  desc "Tool for glamorous shell scripts"
  homepage "https://github.com/charmbracelet/gum"
  url "https://github.com/charmbracelet/gum/releases/download/v2.0.2/gum_2.0.2_Darwin_x86_64.tar.gz"
  version "2.0.2"
  sha256 "5374966c7c7199ea879fcaa525ddc6d447a098d3d35496e430a9a1ef38d30485"

  def install
    bin.install "gum"
    man1.install Dir["manpages/*.1*"]
    zsh_completion.install "completions/gum.zsh" if File.exist?("completions/gum.zsh")
    bash_completion.install "completions/gum.bash" if File.exist?("completions/gum.bash")
    fish_completion.install "completions/gum.fish" if File.exist?("completions/gum.fish")
  end
end
