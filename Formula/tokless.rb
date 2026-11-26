class Tokless < Formula
  desc "Unified pipeline for efficient and effective coding harnesses"
  homepage "https://github.com/HoangP8/tokless"
  url "https://github.com/HoangP8/tokless/releases/download/v1.0.17/tokless-darwin-x64"
  version "1.0.17"
  sha256 "7da49822dbc4a806fec9eb030c05a1139351a8af2161a386b91a5834e424c7c9"

  def install
    bin.install "tokless-darwin-x64" => "tokless"
  end
end
