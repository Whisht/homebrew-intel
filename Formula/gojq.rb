class Gojq < Formula
  desc "Pure Go implementation of jq"
  homepage "https://github.com/itchyny/gojq"
  url "https://github.com/itchyny/gojq/releases/download/v0.12.20/gojq_v0.12.20_darwin_amd64.zip"
  version "0.12.20"
  sha256 "142a0c2f17802ca9a290ca8498adfcf5ec19d8c14b13303c9329511e70dae5bc"

  def install
    bin.install "gojq"
    zsh_completion.install "_gojq" if File.exist?("_gojq")
  end
end
