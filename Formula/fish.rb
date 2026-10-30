class Fish < Formula
  desc "User-friendly command-line shell for UNIX-like operating systems"
  homepage "https://fishshell.com"
  url "https://github.com/fish-shell/fish-shell/releases/download/4.9.3/fish-4.9.3.app.zip"
  version "4.9.3"
  sha256 "3619fa92d540ed0dff4816594429290550d21b92226e0523457e5f0242c5e9a8"

  def install
    prefix.install Dir["Contents/Resources/base/usr/local/*"]
  end
end
