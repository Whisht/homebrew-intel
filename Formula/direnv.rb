class Direnv < Formula
  desc "Load/unload environment variables based on $PWD"
  homepage "https://github.com/direnv/direnv"
  url "https://github.com/direnv/direnv/releases/download/v2.38.2/direnv.darwin-amd64"
  version "2.38.2"
  sha256 "91ad9ce96e156065ba2c751a7392ee748fa8e49b063e14d7203df6e957c212f9"

  def install
    bin.install "direnv.darwin-amd64" => "direnv"
  end
end
