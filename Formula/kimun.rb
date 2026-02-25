class Kimun < Formula
  desc "Code metrics tool — health score, complexity, duplication, hotspots, ownership"
  homepage "https://github.com/lnds/kimun"
  url "https://github.com/lnds/kimun/archive/refs/tags/v0.13.2.tar.gz"
  sha256 "290404bad28184c08b76bb7d797ab2540775ba9e734e3700711afd91134839e3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
