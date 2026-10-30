class Eza < Formula
  desc "Modern, maintained replacement for ls"
  homepage "https://github.com/eza-community/eza"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/eza-v0.23.5-x86_64-apple-darwin.tar.gz"
  version "0.23.5"
  sha256 "81397d55aba6a53c2932aa57b658756691f011de691128744066042c48b709c2"

  def install
    bin.install "eza"
    man1.install Dir["man/*.1"]
    man5.install Dir["man/*.5"]
    zsh_completion.install "completions/zsh/_eza" if File.exist?("completions/zsh/_eza")
    bash_completion.install "completions/bash/eza" if File.exist?("completions/bash/eza")
    fish_completion.install "completions/fish/eza.fish" if File.exist?("completions/fish/eza.fish")
  end
end
