class Tokless < Formula
  desc "Unified pipeline for efficient and effective coding harnesses"
  homepage "https://github.com/HoangP8/tokless"
  url "https://github.com/HoangP8/tokless/releases/download/v1.0.16/tokless-darwin-x64"
  version "1.0.16"
  sha256 "b41b09dc1409f0bd8ff91879480ba45565d495e057d7da7ce28c601911b4eac7"

  def install
    bin.install "tokless-darwin-x64" => "tokless"
  end
end
