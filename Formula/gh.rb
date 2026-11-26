class Gh < Formula
  desc "GitHub command-line tool"
  homepage "https://github.com/cli/cli"
  url "https://github.com/cli/cli/releases/download/v2.106.0/gh_2.106.0_macOS_amd64.zip"
  version "2.106.0"
  sha256 "f43a04a5ffe0717e2e39d7591cbc50db24c6c38d09d0ea4998be27cd197758e3"

  def install
    bin.install "bin/gh"
    man1.install Dir["share/man/man1/*.1"]
  end
end
