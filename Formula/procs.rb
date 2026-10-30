class Procs < Formula
  desc "Modern replacement for ps written in Rust"
  homepage "https://github.com/dalance/procs"
  url "https://github.com/dalance/procs/releases/download/v0.14.12/procs-v0.14.12-x86_64-mac.zip"
  version "0.14.12"
  sha256 "2c276f40c99051984942a5b135b74ce4bc9184984a1543dddfcf275bde71d8d4"

  def install
    bin.install "procs"
  end
end
