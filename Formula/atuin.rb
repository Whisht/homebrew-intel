class Atuin < Formula
  desc "Improved shell history for zsh, bash, fish and nushell"
  homepage "https://github.com/atuinsh/atuin"
  url "https://github.com/atuinsh/atuin/releases/download/v18.24.4/atuin-x86_64-apple-darwin.tar.gz"
  version "18.24.4"
  sha256 "aeeb67d1f3277e8bd92f2773ae383cad43ac49161a08aa4b9142122c99e1305e"

  def install
    bin.install "atuin"
  end
end
