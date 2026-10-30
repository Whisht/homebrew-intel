class Jnv < Formula
  desc "Interactive JSON filter using jq"
  homepage "https://github.com/ynqa/jnv"
  url "https://github.com/ynqa/jnv/releases/download/v0.7.1/jnv-x86_64-apple-darwin.tar.xz"
  version "0.7.1"
  sha256 "3bb29e5267a8925da4c19b3b3f31a8c35b19c2703bf292d71ea5e51f2defc3d6"

  def install
    bin.install "jnv"
  end
end
