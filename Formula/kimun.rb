class Kimun < Formula
  desc "Code metrics tool — health score, complexity, duplication, hotspots, ownership"
  homepage "https://github.com/lnds/kimun"
  url "https://github.com/lnds/kimun/archive/refs/tags/v0.23.0.tar.gz"
  sha256 "8c69da071916b7f199ac7c9b3dc0d503b9189542b83f7ed0cb4e1e639c9b4dd8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
