class Tokless < Formula
  desc "Unified pipeline for efficient and effective coding harnesses"
  homepage "https://github.com/HoangP8/tokless"
  url "https://github.com/HoangP8/tokless/releases/download/v1.0.13/tokless-darwin-x64"
  version "1.0.13"
  sha256 "dd9c09c570facdad602be3f4dcffae5c308d1d162747e851907afc782cb651ef"

  def install
    bin.install "tokless-darwin-x64" => "tokless"
  end
end
