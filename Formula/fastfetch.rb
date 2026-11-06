class Fastfetch < Formula
  desc "Like neofetch, but much faster because written mostly in C"
  homepage "https://github.com/fastfetch-cli/fastfetch"
  url "https://github.com/fastfetch-cli/fastfetch/releases/download/2.71.0/fastfetch-macos-universal.tar.gz"
  version "2.71.0"
  sha256 "6e503980ac268b072259f00e5c439eb90a420535f3593704c096b5b3bea64199"

  def install
    bin.install "usr/bin/fastfetch"
    bin.install "usr/bin/flashfetch"
    man1.install "usr/share/man/man1/fastfetch.1" if File.exist?("usr/share/man/man1/fastfetch.1")
    zsh_completion.install "usr/share/zsh/site-functions/_fastfetch" if File.exist?("usr/share/zsh/site-functions/_fastfetch")
    bash_completion.install "usr/share/bash-completion/completions/fastfetch" if File.exist?("usr/share/bash-completion/completions/fastfetch")
    fish_completion.install "usr/share/fish/vendor_completions.d/fastfetch.fish" if File.exist?("usr/share/fish/vendor_completions.d/fastfetch.fish")
  end
end
