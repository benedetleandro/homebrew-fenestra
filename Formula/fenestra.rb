class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.3/fenestra-darwin-arm64.tar.gz"
  sha256 "1FD3EE21A95EDCE4770CAEE04A1BC3FB068CD8CEA2A28C3A0B5255601A89623E"
  license "MIT"
  version "0.5.3"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.3/fenestra-darwin-amd64.tar.gz"
    sha256 "8AD95E14F8F137411EA07401DE565FFE812498D438DBC54522226CF52E8243E4"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.5.3", shell_output("#{bin}/fenestra --version")
  end
end
