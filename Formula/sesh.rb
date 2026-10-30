class Sesh < Formula
  desc "Smart terminal session manager for tmux"
  homepage "https://github.com/joshmedeski/sesh"
  url "https://github.com/joshmedeski/sesh/releases/download/v2.34.0/sesh_Darwin_x86_64.tar.gz"
  version "2.34.0"
  sha256 "736b8e1cf13b20569fc52e635e72ec8f2876cdc996cfee25afe7c9591eec74b8"

  def install
    bin.install "sesh"
  end
end
