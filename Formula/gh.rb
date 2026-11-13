class Gh < Formula
  desc "GitHub command-line tool"
  homepage "https://github.com/cli/cli"
  url "https://github.com/cli/cli/releases/download/v2.104.0/gh_2.104.0_macOS_amd64.zip"
  version "2.104.0"
  sha256 "a8c2a708dbae89dc7c05ba7b0beafc95bd8d09ab4a3505467b77d32ebf364dc6"

  def install
    bin.install "bin/gh"
    man1.install Dir["share/man/man1/*.1"]
  end
end
