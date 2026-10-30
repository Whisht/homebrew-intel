class Glow < Formula
  desc "Render markdown on the CLI"
  homepage "https://github.com/charmbracelet/glow"
  url "https://github.com/charmbracelet/glow/releases/download/v3.0.0/glow_3.0.0_Darwin_x86_64.tar.gz"
  version "3.0.0"
  sha256 "b911b90622e686d44bc072112898584a601ed8353276b735835d8cdbcc27f660"

  def install
    bin.install "glow"
    man1.install Dir["manpages/*.1*"]
    zsh_completion.install "completions/glow.zsh" if File.exist?("completions/glow.zsh")
    bash_completion.install "completions/glow.bash" if File.exist?("completions/glow.bash")
    fish_completion.install "completions/glow.fish" if File.exist?("completions/glow.fish")
  end
end
