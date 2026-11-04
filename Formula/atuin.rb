class Atuin < Formula
  desc "Improved shell history for zsh, bash, fish and nushell"
  homepage "https://github.com/atuinsh/atuin"
  url "https://github.com/atuinsh/atuin/releases/download/v18.24.5/atuin-x86_64-apple-darwin.tar.gz"
  version "18.24.5"
  sha256 "220450dd55eee9a0b30797bb02412d90849c839f90ac1ae377a877c282e2deaa"

  def install
    bin.install "atuin"
  end
end
