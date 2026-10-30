class Svu < Formula
  desc "Semantic Version Utility"
  homepage "https://github.com/caarlos0/svu"
  url "https://github.com/caarlos0/svu/releases/download/v3.4.1/svu_3.4.1_darwin_all.tar.gz"
  version "3.4.1"
  sha256 "aeec0a735f12d6313c5b4f295ac2f86e00b56571d241abe5aa0306b41f43efd7"

  def install
    bin.install "svu"
    man1.install Dir["manpages/*.1*"]
    zsh_completion.install "completions/svu.zsh" if File.exist?("completions/svu.zsh")
    bash_completion.install "completions/svu.bash" if File.exist?("completions/svu.bash")
    fish_completion.install "completions/svu.fish" if File.exist?("completions/svu.fish")
  end
end
