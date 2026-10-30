class Fastfetch < Formula
  desc "Like neofetch, but much faster because written mostly in C"
  homepage "https://github.com/fastfetch-cli/fastfetch"
  url "https://github.com/fastfetch-cli/fastfetch/releases/download/2.70.0/fastfetch-macos-universal.tar.gz"
  version "2.70.0"
  sha256 "8e3e2f3583a5b43ea20c451edfe0dac7172835c5b7de97a96347168f31106558"

  def install
    bin.install "usr/bin/fastfetch"
    bin.install "usr/bin/flashfetch"
    man1.install "usr/share/man/man1/fastfetch.1" if File.exist?("usr/share/man/man1/fastfetch.1")
    zsh_completion.install "usr/share/zsh/site-functions/_fastfetch" if File.exist?("usr/share/zsh/site-functions/_fastfetch")
    bash_completion.install "usr/share/bash-completion/completions/fastfetch" if File.exist?("usr/share/bash-completion/completions/fastfetch")
    fish_completion.install "usr/share/fish/vendor_completions.d/fastfetch.fish" if File.exist?("usr/share/fish/vendor_completions.d/fastfetch.fish")
  end
end
