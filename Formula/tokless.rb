class Tokless < Formula
  desc "Unified pipeline for efficient and effective coding harnesses"
  homepage "https://github.com/HoangP8/tokless"
  url "https://github.com/HoangP8/tokless/releases/download/v1.0.14/tokless-darwin-x64"
  version "1.0.14"
  sha256 "ca491b0366d00de14ad6ca92aa0cea3c30fe0b74b57729194f464ce55f7e2e70"

  def install
    bin.install "tokless-darwin-x64" => "tokless"
  end
end
