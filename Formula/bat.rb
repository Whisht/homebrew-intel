class Bat < Formula
  desc "Clone of cat(1) with syntax highlighting and Git integration"
  homepage "https://github.com/sharkdp/bat"
  url "https://github.com/sharkdp/bat/releases/download/v0.27.0/bat-v0.27.0-x86_64-apple-darwin.tar.gz"
  version "0.27.0"
  sha256 "29029a4aaecef1ec873aa319047bf70803026bd3eaff664011fff650f73355f9"

  def install
    bin.install "bat"
    man1.install "bat.1" if File.exist?("bat.1")
    zsh_completion.install "autocomplete/bat.zsh" if File.exist?("autocomplete/bat.zsh")
    bash_completion.install "autocomplete/bat.bash" if File.exist?("autocomplete/bat.bash")
    fish_completion.install "autocomplete/bat.fish" if File.exist?("autocomplete/bat.fish")
  end
end
