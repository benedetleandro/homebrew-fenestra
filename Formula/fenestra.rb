class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.4.1/fenestra-darwin-arm64.tar.gz"
  sha256 "CE171A01D4A151F91558303B825C740EF69D73E12B0110969892E5D5D2904DA6"
  license "MIT"
  version "0.4.1"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.4.1/fenestra-darwin-amd64.tar.gz"
    sha256 "B4BF60D981625973E7202A9E721E211C0F1C8CA76DD66E14B132DB48472D6C30"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.4.1", shell_output("#{bin}/fenestra --version")
  end
end
