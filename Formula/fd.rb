class Fd < Formula
  desc "Simple, fast and user-friendly alternative to find"
  homepage "https://github.com/sharkdp/fd"
  url "https://github.com/sharkdp/fd/releases/download/v10.5.0/fd-v10.5.0-x86_64-apple-darwin.tar.gz"
  version "10.5.0"
  sha256 "7e31028c62c6955877735d0406807aa484c2a5e6f86235a59e26c29c301da590"

  def install
    bin.install "fd"
    man1.install "fd.1" if File.exist?("fd.1")
    zsh_completion.install "autocomplete/_fd" if File.exist?("autocomplete/_fd")
    bash_completion.install "autocomplete/fd.bash" if File.exist?("autocomplete/fd.bash")
    fish_completion.install "autocomplete/fd.fish" if File.exist?("autocomplete/fd.fish")
  end
end
