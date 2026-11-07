class Fd < Formula
  desc "Simple, fast and user-friendly alternative to find"
  homepage "https://github.com/sharkdp/fd"
  url "https://github.com/sharkdp/fd/releases/download/v10.5.2/fd-v10.5.2-x86_64-apple-darwin.tar.gz"
  version "10.5.2"
  sha256 "0f02e6000a8c896cd254cf4dccc7da1e604e77a32c6783609eed5e4cb07785e3"

  def install
    bin.install "fd"
    man1.install "fd.1" if File.exist?("fd.1")
    zsh_completion.install "autocomplete/_fd" if File.exist?("autocomplete/_fd")
    bash_completion.install "autocomplete/fd.bash" if File.exist?("autocomplete/fd.bash")
    fish_completion.install "autocomplete/fd.fish" if File.exist?("autocomplete/fd.fish")
  end
end
