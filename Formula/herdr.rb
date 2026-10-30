class Herdr < Formula
  desc "Persistent terminal workspace and session multiplexer for coding agents"
  homepage "https://github.com/herdrdev/herdr"
  url "https://github.com/herdrdev/herdr/releases/download/v0.9.5/herdr-macos-x86_64"
  version "0.9.5"
  sha256 "5fb0a908ec7f6745e3e245738b06bfad56c46391c391ab3c0955fbead01f1369"

  def install
    bin.install "herdr-macos-x86_64" => "herdr"
  end
end
