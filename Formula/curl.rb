class Curl < Formula
  desc "Get a file from an HTTP, HTTPS or FTP server (static standalone build)"
  homepage "https://curl.se"
  url "https://github.com/stunnel/static-curl/releases/download/8.23.0-1/curl-macos-x86_64-8.23.0-1.tar.xz"
  version "8.23.0-1"
  sha256 "be645642d239a625c9f06a823ae0a62e2acb4788309435bf8d91e7b6bd197238"

  def install
    bin.install "bin/curl"
    bin.install "bin/trurl"
    man1.install Dir["share/man/man1/*.1"]
  end
end
