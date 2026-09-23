class Kimun < Formula
  desc "Code metrics tool — health score, complexity, duplication, hotspots, ownership"
  homepage "https://github.com/lnds/kimun"
  url "https://github.com/lnds/kimun/archive/refs/tags/v0.25.1.tar.gz"
  sha256 "2dd5e87c96da191bd5c06cba45b20822108ce9e5013c4e56e5676c8d3ea55211"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
