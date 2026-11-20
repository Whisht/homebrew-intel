class Atuin < Formula
  desc "Improved shell history for zsh, bash, fish and nushell"
  homepage "https://github.com/atuinsh/atuin"
  url "https://github.com/atuinsh/atuin/releases/download/v18.25.0/atuin-x86_64-apple-darwin.tar.gz"
  version "18.25.0"
  sha256 "ed4c7a724775c1c8cabd811e0fd1ee1f9e9b3af5db7a516ed164d8ee4e056d5e"

  def install
    bin.install "atuin"
  end
end
