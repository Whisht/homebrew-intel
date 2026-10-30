class Jq < Formula
  desc "Lightweight and flexible command-line JSON processor"
  homepage "https://github.com/jqlang/jq"
  url "https://github.com/jqlang/jq/releases/download/jq-1.8.2/jq-macos-amd64"
  version "1.8.2"
  sha256 "e94b266e3c26690550006abe63152b782280f4e14374accdf04cbde844f00bc0"

  def install
    bin.install "jq-macos-amd64" => "jq"
  end
end
