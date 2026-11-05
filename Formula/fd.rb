class Fd < Formula
  desc "Simple, fast and user-friendly alternative to find"
  homepage "https://github.com/sharkdp/fd"
  url "https://github.com/sharkdp/fd/releases/download/v10.5.1/fd-v10.5.1-x86_64-apple-darwin.tar.gz"
  version "10.5.1"
  sha256 "308ac4fa5f53798b4e4bd77d243ba65e77b3eaae1ef2fe4e2a8a4bb2128eedff"

  def install
    bin.install "fd"
    man1.install "fd.1" if File.exist?("fd.1")
    zsh_completion.install "autocomplete/_fd" if File.exist?("autocomplete/_fd")
    bash_completion.install "autocomplete/fd.bash" if File.exist?("autocomplete/fd.bash")
    fish_completion.install "autocomplete/fd.fish" if File.exist?("autocomplete/fd.fish")
  end
end
