class Tealdeer < Formula
  desc "Very fast implementation of tldr in Rust"
  homepage "https://github.com/tealdeer-rs/tealdeer"
  url "https://github.com/tealdeer-rs/tealdeer/releases/download/v1.9.1/tealdeer-macos-x86_64"
  version "1.9.1"
  sha256 "06189e82d407d2f3193b9a22d2b6a289a271677142b993af2cee0c2120e12111"

  def install
    bin.install "tealdeer-macos-x86_64" => "tldr"
  end
end
