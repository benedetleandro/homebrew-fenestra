class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.1/fenestra-darwin-arm64.tar.gz"
  sha256 "452B923655725E4562CDB6C28781AD1ED8DDBE9CCE9B85A7A5FCB2DE67266293"
  license "MIT"
  version "0.5.1"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.1/fenestra-darwin-amd64.tar.gz"
    sha256 "E3B1A1BAA3444FD0685E097B9A36A0D55FE635688BE14ACE7D9A45345F9A0B68"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.5.1", shell_output("#{bin}/fenestra --version")
  end
end
