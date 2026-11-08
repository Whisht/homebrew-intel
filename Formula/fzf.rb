class Fzf < Formula
  desc "Command-line fuzzy finder written in Go"
  homepage "https://github.com/junegunn/fzf"
  url "https://github.com/junegunn/fzf/releases/download/v0.75.0/fzf-0.75.0-darwin_amd64.tar.gz"
  version "0.75.0"
  sha256 "8fa67fa874468b8e73ecad2df82cc110026f45d10605128aaac6b191262d2844"

  def install
    bin.install "fzf"
  end
end
