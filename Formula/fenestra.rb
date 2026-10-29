class Fenestra < Formula
  desc "Local static server that opens HTML builds in your browser"
  homepage "https://github.com/benedetleandro/fenestra"
  url "https://github.com/benedetleandro/fenestra/releases/download/v0.6.0/fenestra-darwin-arm64.tar.gz"
  sha256 "03F1B50718E48FADCEB43B047A50B3DA754F1AEC868D3A419AB5CB1D09C23CFF"
  license "MIT"
  version "0.6.0"

  on_intel do
    url "https://github.com/benedetleandro/fenestra/releases/download/v0.6.0/fenestra-darwin-amd64.tar.gz"
    sha256 "BA6043F82F9A9461FB77E0558779D465508F4AC6DA07471E7F46657B106AEBFD"
  end

  def install
    bin.install "fenestra"
  end

  test do
    assert_match "Fenestra", shell_output("#{bin}/fenestra --version")
    assert_match "0.6.0", shell_output("#{bin}/fenestra --version")
  end
end
