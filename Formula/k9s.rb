class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style"
  homepage "https://github.com/derailed/k9s"
  url "https://github.com/derailed/k9s/releases/download/v0.51.0/k9s_Darwin_amd64.tar.gz"
  version "0.51.0"
  sha256 "7e8802c57c45a0cd389e8fc38472243fe4cf48d8ad5957e189ce370e19e5eda0"

  def install
    bin.install "k9s"
  end
end
