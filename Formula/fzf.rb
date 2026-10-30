class Fzf < Formula
  desc "Command-line fuzzy finder written in Go"
  homepage "https://github.com/junegunn/fzf"
  url "https://github.com/junegunn/fzf/releases/download/v0.74.5/fzf-0.74.5-darwin_amd64.tar.gz"
  version "0.74.5"
  sha256 "aca6cab692e6c069e724a43070a448e18586c7c0fdd1139f6d487ec1680599ed"

  def install
    bin.install "fzf"
  end
end
