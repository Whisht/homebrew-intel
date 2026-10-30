class Serpl < Formula
  desc "Simple terminal UI for search and replace, ala VS Code"
  homepage "https://github.com/yassinebridi/serpl"
  url "https://github.com/yassinebridi/serpl/releases/download/0.3.11/serpl-0.3.11-macos-x86_64.tar.gz"
  version "0.3.11"
  sha256 "5e72b21f610ce6259cecdea61b8aebb8da9f83ac051d4bf174488f686ade215a"

  def install
    bin.install "serpl"
  end
end
