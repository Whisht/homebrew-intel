class Tinytex < Formula
  desc "Lightweight, portable LaTeX distribution based on TeX Live"
  homepage "https://yihui.org/tinytex/"
  url "https://github.com/rstudio/tinytex-releases/releases/download/v2026.11/TinyTeX-darwin-v2026.11.tar.xz"
  version "2026.11"
  sha256 "a54a3a16aca1717580b1cc0e4965791487c0650a450d1502dda457dd68e41962"

  def install
    prefix.install(Dir["{*,.[!.]*}"] - [".brew_home"])
    bin.install_symlink Dir["#{prefix}/bin/*/*"]
  end
end
