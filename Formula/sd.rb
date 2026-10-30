class Sd < Formula
  desc "Intuitive find & replace CLI (sed alternative)"
  homepage "https://github.com/chmln/sd"
  url "https://github.com/chmln/sd/releases/download/v1.1.0/sd-v1.1.0-x86_64-apple-darwin.tar.gz"
  version "1.1.0"
  sha256 "1fca1e9c91813a8aac6821063c923107ba0f66a83309e095edcd3b202f67f97e"

  def install
    bin.install "sd"
    man1.install "sd.1" if File.exist?("sd.1")
    zsh_completion.install "completions/_sd" if File.exist?("completions/_sd")
    bash_completion.install "completions/sd.bash" if File.exist?("completions/sd.bash")
    fish_completion.install "completions/sd.fish" if File.exist?("completions/sd.fish")
  end
end
