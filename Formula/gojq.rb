class Gojq < Formula
  desc "Pure Go implementation of jq"
  homepage "https://github.com/itchyny/gojq"
  url "https://github.com/itchyny/gojq/releases/download/v0.12.19/gojq_v0.12.19_darwin_amd64.zip"
  version "0.12.19"
  sha256 "e8816cd2e1a276a03ed8f902475d2ed641043295f420aadc623929d717cd4314"

  def install
    bin.install "gojq"
    zsh_completion.install "_gojq" if File.exist?("_gojq")
  end
end
