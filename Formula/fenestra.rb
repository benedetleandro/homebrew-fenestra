class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.7.0/fenestra-darwin-arm64.tar.gz"
  sha256 "AEEA22353611E81061D5169DEAE2CA94A16C712AE720725ADBB02C8768700656"
  license "MIT"
  version "0.7.0"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.7.0/fenestra-darwin-amd64.tar.gz"
    sha256 "D7C384D52B1241C86DD251EA59DA29BA23193F8C65E74ED6CFAE176CAD8A5D92"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.7.0", shell_output("#{bin}/fenestra --version")
  end
end
