class Kimun < Formula
  desc "Code metrics tool — health score, complexity, duplication, hotspots, ownership"
  homepage "https://github.com/lnds/kimun"
  url "https://github.com/lnds/kimun/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "6b4e33ad527b52f1062470bb03f87e268953804d7f80059b54a2921fe500b6de"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
