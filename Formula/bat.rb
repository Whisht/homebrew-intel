class Bat < Formula
  desc "Clone of cat(1) with syntax highlighting and Git integration"
  homepage "https://github.com/sharkdp/bat"
  url "https://github.com/sharkdp/bat/releases/download/v0.26.1/bat-v0.26.1-x86_64-apple-darwin.tar.gz"
  version "0.26.1"
  sha256 "830d63b0bba1fa040542ec569e3cf77f60d3356b9de75116a344b061e0894245"

  def install
    bin.install "bat"
    man1.install "bat.1" if File.exist?("bat.1")
    zsh_completion.install "autocomplete/bat.zsh" if File.exist?("autocomplete/bat.zsh")
    bash_completion.install "autocomplete/bat.bash" if File.exist?("autocomplete/bat.bash")
    fish_completion.install "autocomplete/bat.fish" if File.exist?("autocomplete/bat.fish")
  end
end
