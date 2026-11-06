class Cliamp < Formula
  desc "Retro Winamp-inspired terminal music player"
  homepage "https://github.com/bjarneo/cliamp"
  url "https://github.com/bjarneo/cliamp/releases/download/v2.4.0/cliamp-darwin-amd64"
  version "2.4.0"
  sha256 "836d0ed3d46a39ea0ff75b17738e77c2652c03fbc46aefb78110cb6664a41ee6"

  def install
    bin.install "cliamp-darwin-amd64" => "cliamp"
  end
end
