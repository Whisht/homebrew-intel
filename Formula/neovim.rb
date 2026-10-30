class Neovim < Formula
  desc "Ambitious Vim-fork focused on extensibility and usability"
  homepage "https://github.com/neovim/neovim"
  url "https://github.com/neovim/neovim/releases/download/v0.12.6/nvim-macos-x86_64.tar.gz"
  version "0.12.6"
  sha256 "481424f1dbc85f637d57e47d27d042aa9c883e5a4fe9ee64fc4ee9573b221998"

  def install
    prefix.install Dir["*"]
  end
end
