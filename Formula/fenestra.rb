class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.2/fenestra-darwin-arm64.tar.gz"
  sha256 "06754ADA6B65F097E1621C2AE5E815A81DE3469F01512F19AFE1DA0A881EA441"
  license "MIT"
  version "0.5.2"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.2/fenestra-darwin-amd64.tar.gz"
    sha256 "CA8497C4E9FEC2C2CA72B5FD2BDE82A07313F5D8CC863279E71E7289FAB9CE86"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.5.2", shell_output("#{bin}/fenestra --version")
  end
end
