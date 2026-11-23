class Ripgrep < Formula
  desc "Search tool like grep and The Silver Searcher"
  homepage "https://github.com/BurntSushi/ripgrep"
  url "https://github.com/BurntSushi/ripgrep/releases/download/16.0.0/ripgrep-16.0.0-x86_64-apple-darwin.tar.gz"
  version "16.0.0"
  sha256 "aa9183b0e0bfac03c5818895ad18b75001c402d230063898abfe5a58cd413caa"

  def install
    bin.install "rg"
    man1.install "doc/rg.1" if File.exist?("doc/rg.1")
    zsh_completion.install "complete/_rg" if File.exist?("complete/_rg")
    bash_completion.install "complete/rg.bash" if File.exist?("complete/rg.bash")
    fish_completion.install "complete/rg.fish" if File.exist?("complete/rg.fish")
  end
end
