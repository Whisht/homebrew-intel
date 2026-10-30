class Jj < Formula
  desc "Git-compatible DVCS that is both simple and powerful"
  homepage "https://github.com/jj-vcs/jj"
  url "https://github.com/jj-vcs/jj/releases/download/v0.46.0/jj-v0.46.0-x86_64-apple-darwin.tar.gz"
  version "0.46.0"
  sha256 "10d941de276c7c5074ef5d395312813b4575f4ce92cb9c0b05738efb90bd3b60"

  def install
    bin.install "jj"
  end
end
