class Gh < Formula
  desc "GitHub command-line tool"
  homepage "https://github.com/cli/cli"
  url "https://github.com/cli/cli/releases/download/v2.103.3/gh_2.103.3_macOS_amd64.zip"
  version "2.103.3"
  sha256 "a2f86418f4350ae6e9ec60d5000bdf7665728436946a97fc27fe50e6ae752682"

  def install
    bin.install "bin/gh"
    man1.install Dir["share/man/man1/*.1"]
  end
end
