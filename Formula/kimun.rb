class Kimun < Formula
  desc "Code metrics tool — health score, complexity, duplication, hotspots, ownership"
  homepage "https://github.com/lnds/kimun"
  url "https://github.com/lnds/kimun/archive/refs/tags/v0.34.1.tar.gz"
  sha256 "a4788c5a8c36cef502c8d8a084abe658935bd0d0de3c610280d0b6f9394958ca"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
