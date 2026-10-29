class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.4.2/fenestra-darwin-arm64.tar.gz"
  sha256 "951F576F3D78A6E00AF9A70DD8CF837E61543AC2268182B1FADA9E2B60B31BB5"
  license "MIT"
  version "0.4.2"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.4.2/fenestra-darwin-amd64.tar.gz"
    sha256 "B44F5B49FE234CB1AB2702CF0583714C708A5E772234B66159E70EB8B4109D15"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.4.2", shell_output("#{bin}/fenestra --version")
  end
end
