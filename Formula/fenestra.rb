class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.0/fenestra-darwin-arm64.tar.gz"
  sha256 "4A7D4FE3133904D44E393D46FD1D67A4BEC862EA4425BA2E495FBFFFA7779364"
  license "MIT"
  version "0.5.0"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.5.0/fenestra-darwin-amd64.tar.gz"
    sha256 "87A8FE5EC15DFAC826BCE5F11A5B23ADC4FBB067CEE7A3C26A703757942F50F7"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.5.0", shell_output("#{bin}/fenestra --version")
  end
end
