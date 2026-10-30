class Pandoc < Formula
  desc "Swiss-army knife of markup format conversion"
  homepage "https://github.com/jgm/pandoc"
  url "https://github.com/jgm/pandoc/releases/download/3.13/pandoc-3.13-x86_64-macOS.zip"
  version "3.13"
  sha256 "1823278715aa405aaf21b59cde5dc789346aa8d4fc307467f9a9ee84162bedc5"

  def install
    bin.install "bin/pandoc"
    bin.install "bin/pandoc-lua"
    bin.install "bin/pandoc-server"
    man1.install Dir["share/man/man1/*.1"]
  end
end
