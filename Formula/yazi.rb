class Yazi < Formula
  desc "Blazing fast terminal file manager written in Rust, based on async I/O"
  homepage "https://github.com/sxyazi/yazi"
  url "https://github.com/sxyazi/yazi/releases/download/v26.9.1/yazi-x86_64-apple-darwin.zip"
  version "26.9.1"
  sha256 "36e09036fcc446488d876d139a5e303f2443b82cfb6ac7dfcb43892d6fe6fa20"

  def install
    bin.install "yazi"
    bin.install "ya"
    zsh_completion.install "completions/_yazi" if File.exist?("completions/_yazi")
    zsh_completion.install "completions/_ya" if File.exist?("completions/_ya")
    bash_completion.install "completions/yazi.bash" if File.exist?("completions/yazi.bash")
    bash_completion.install "completions/ya.bash" if File.exist?("completions/ya.bash")
    fish_completion.install "completions/yazi.fish" if File.exist?("completions/yazi.fish")
    fish_completion.install "completions/ya.fish" if File.exist?("completions/ya.fish")
  end
end
