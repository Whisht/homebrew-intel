class Jj < Formula
  desc "Git-compatible DVCS that is both simple and powerful"
  homepage "https://github.com/jj-vcs/jj"
  url "https://github.com/jj-vcs/jj/releases/download/v0.47.1/jj-v0.47.1-x86_64-apple-darwin.tar.gz"
  version "0.47.1"
  sha256 "ce7ac70c3b7cf90f2273b4fa62d24576727c5fd55c60dc3820221c05320c7589"

  def install
    bin.install "jj"
  end
end
