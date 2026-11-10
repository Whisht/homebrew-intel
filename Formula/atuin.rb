class Atuin < Formula
  desc "Improved shell history for zsh, bash, fish and nushell"
  homepage "https://github.com/atuinsh/atuin"
  url "https://github.com/atuinsh/atuin/releases/download/v18.24.6/atuin-x86_64-apple-darwin.tar.gz"
  version "18.24.6"
  sha256 "3d0126fdf00a079882b89d059f246488af700c4a8092a9400a92ce05688fdba4"

  def install
    bin.install "atuin"
  end
end
