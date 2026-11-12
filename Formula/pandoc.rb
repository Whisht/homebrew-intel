class Pandoc < Formula
  desc "Swiss-army knife of markup format conversion"
  homepage "https://github.com/jgm/pandoc"
  url "https://github.com/jgm/pandoc/releases/download/3.14/pandoc-3.14-x86_64-macOS.zip"
  version "3.14"
  sha256 "891708579061e7b1c1a6ce0df30ebb3cb2b6d0ca045ed3c8554ab830c1e0c270"

  def install
    bin.install "bin/pandoc"
    bin.install "bin/pandoc-lua"
    bin.install "bin/pandoc-server"
    man1.install Dir["share/man/man1/*.1"]
  end
end
