class Ripgrep < Formula
  desc "Search tool like grep and The Silver Searcher"
  homepage "https://github.com/BurntSushi/ripgrep"
  url "https://github.com/BurntSushi/ripgrep/releases/download/15.2.0/ripgrep-15.2.0-x86_64-apple-darwin.tar.gz"
  version "15.2.0"
  sha256 "af7825fcc69a2afc7a7aea55fc9af90e26421d8f20fe59df32e233c0b8a231c1"

  def install
    bin.install "rg"
    man1.install "doc/rg.1" if File.exist?("doc/rg.1")
    zsh_completion.install "complete/_rg" if File.exist?("complete/_rg")
    bash_completion.install "complete/rg.bash" if File.exist?("complete/rg.bash")
    fish_completion.install "complete/rg.fish" if File.exist?("complete/rg.fish")
  end
end
