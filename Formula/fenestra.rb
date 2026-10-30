class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.6.1/fenestra-darwin-arm64.tar.gz"
  sha256 "AEB8BEAF9145BB01C6922808362C2061C06DF1F97558A2DE2E25FE5C52884F5E"
  license "MIT"
  version "0.6.1"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.6.1/fenestra-darwin-amd64.tar.gz"
    sha256 "F4E011CCBAA5E8CFBA27C225D990A4A98626BD8D6D05439F81F159F229169FD0"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.6.1", shell_output("#{bin}/fenestra --version")
  end
end
