class Zoxide < Formula
  desc "Shell extension to navigate your filesystem faster"
  homepage "https://github.com/ajeetdsouza/zoxide"
  url "https://github.com/ajeetdsouza/zoxide/releases/download/v0.10.0/zoxide-0.10.0-x86_64-apple-darwin.tar.gz"
  version "0.10.0"
  sha256 "18ab7ae2633ad6e2ab79a4e665cbba1e95b7c872d44523326efb793202451dad"

  def install
    bin.install "zoxide"
    man1.install Dir["man/man1/*.1"]
    zsh_completion.install "completions/_zoxide" if File.exist?("completions/_zoxide")
    bash_completion.install "completions/zoxide.bash" if File.exist?("completions/zoxide.bash")
    fish_completion.install "completions/zoxide.fish" if File.exist?("completions/zoxide.fish")
  end
end
