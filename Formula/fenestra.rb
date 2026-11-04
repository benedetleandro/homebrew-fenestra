class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v1.0.0/fenestra-darwin-arm64.tar.gz"
  sha256 "3145a78e4d8ddb8489d23e404b72416a66d01715b9a073df995b02686c7b941d"
  license "MIT"
  version "1.0.0"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v1.0.0/fenestra-darwin-amd64.tar.gz"
    sha256 "918e0f42779c6bfc8bfb035f39035f25f880c887ec963db9ee9f08263b1960cb"
  end

  def install
    bin.install "fenestra"
    pkgshare.install "manual.html"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "1.0.0", shell_output("#{bin}/fenestra --version")
  end
end
