class Jqp < Formula
  desc "TUI playground to experiment with jq"
  homepage "https://github.com/noahgorstein/jqp"
  url "https://github.com/noahgorstein/jqp/releases/download/v0.8.0/jqp_Darwin_x86_64.tar.gz"
  version "0.8.0"
  sha256 "8af39481eb9ccc2c69665bb89b8ee8fa3558acbc58f65be293832e69dc865c99"

  def install
    bin.install "jqp"
  end
end
