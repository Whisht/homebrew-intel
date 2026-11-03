class Svu < Formula
  desc "Semantic Version Utility"
  homepage "https://github.com/caarlos0/svu"
  url "https://github.com/caarlos0/svu/releases/download/v3.4.4/svu_3.4.4_darwin_all.tar.gz"
  version "3.4.4"
  sha256 "d29079db5bf50f25b805ca8511457d9ea067a3efb7ccbf155d24e512d3dcd2be"

  def install
    bin.install "svu"
    man1.install Dir["manpages/*.1*"]
    zsh_completion.install "completions/svu.zsh" if File.exist?("completions/svu.zsh")
    bash_completion.install "completions/svu.bash" if File.exist?("completions/svu.bash")
    fish_completion.install "completions/svu.fish" if File.exist?("completions/svu.fish")
  end
end
