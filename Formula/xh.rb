class Xh < Formula
  desc "Friendly and fast tool for sending HTTP requests"
  homepage "https://github.com/ducaale/xh"
  url "https://github.com/ducaale/xh/releases/download/v0.26.3/xh-v0.26.3-x86_64-apple-darwin.tar.gz"
  version "0.26.3"
  sha256 "b1c07e42238485bdcbed0982766f58b4daa631f0a33870100054ef5fbb4a3c4b"

  def install
    bin.install "xh"
    man1.install "doc/xh.1" if File.exist?("doc/xh.1")
    zsh_completion.install "completions/_xh" if File.exist?("completions/_xh")
    bash_completion.install "completions/xh.bash" if File.exist?("completions/xh.bash")
    fish_completion.install "completions/xh.fish" if File.exist?("completions/xh.fish")
  end
end
