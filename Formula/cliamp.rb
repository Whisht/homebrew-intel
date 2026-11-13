class Cliamp < Formula
  desc "Retro Winamp-inspired terminal music player"
  homepage "https://github.com/bjarneo/cliamp"
  url "https://github.com/bjarneo/cliamp/releases/download/v2.4.1/cliamp-darwin-amd64"
  version "2.4.1"
  sha256 "b78f79455e77d5048b24a24b438cbf0d41eb9e0d376e60dcca1e3d981b75c412"

  def install
    bin.install "cliamp-darwin-amd64" => "cliamp"
  end
end
