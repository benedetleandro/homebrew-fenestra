class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v1.1.0/fenestra-darwin-arm64.tar.gz"
  sha256 "0c2269a831309cb5348b1998843fb5f00d361523b5d97792bee1b982c6bb8e6f"
  license "MIT"
  version "1.1.0"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v1.1.0/fenestra-darwin-amd64.tar.gz"
    sha256 "f218f33c188b57b1117b5cf79659caca8abcf838a483bfde78d6f24dd36a00b2"
  end

  def install
    bin.install "fenestra"
    pkgshare.install "manual.html"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "1.1.0", shell_output("#{bin}/fenestra --version")
  end
end
