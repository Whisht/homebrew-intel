class Atuin < Formula
  desc "Improved shell history for zsh, bash, fish and nushell"
  homepage "https://github.com/atuinsh/atuin"
  url "https://github.com/atuinsh/atuin/releases/download/v18.25.1/atuin-x86_64-apple-darwin.tar.gz"
  version "18.25.1"
  sha256 "ef02c01ba521475be872dc7e725dfa6ad3b3459162a7d642633239f9dfc570eb"

  def install
    bin.install "atuin"
  end
end
