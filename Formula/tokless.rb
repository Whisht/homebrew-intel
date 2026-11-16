class Tokless < Formula
  desc "Unified pipeline for efficient and effective coding harnesses"
  homepage "https://github.com/HoangP8/tokless"
  url "https://github.com/HoangP8/tokless/releases/download/v1.0.15/tokless-darwin-x64"
  version "1.0.15"
  sha256 "ad7e56b52efa5ae14a1c06e82915ccf61b2ae14dede3d0fb9e96135850da4fc7"

  def install
    bin.install "tokless-darwin-x64" => "tokless"
  end
end
