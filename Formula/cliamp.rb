class Cliamp < Formula
  desc "Retro Winamp-inspired terminal music player"
  homepage "https://github.com/bjarneo/cliamp"
  url "https://github.com/bjarneo/cliamp/releases/download/v2.3.0/cliamp-darwin-amd64"
  version "2.3.0"
  sha256 "c0b5af09abca83a615d2f47146adcfc61b0723b333509b5eeb6c8ada11cce6d3"

  def install
    bin.install "cliamp-darwin-amd64" => "cliamp"
  end
end
