class Gh < Formula
  desc "GitHub command-line tool"
  homepage "https://github.com/cli/cli"
  url "https://github.com/cli/cli/releases/download/v2.105.0/gh_2.105.0_macOS_amd64.zip"
  version "2.105.0"
  sha256 "23602cbccbbdc6285a8520745b714cb927ce2ca621779373c2a20cd8e33fda66"

  def install
    bin.install "bin/gh"
    man1.install Dir["share/man/man1/*.1"]
  end
end
