class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "49fcf068a0e744ae44319ef0c8268f8a8e73330a86facd67b01482bbfd67819b"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.12"
    sha256 cellar: :any_skip_relocation, catalina:     "20e990b831632d44f0681e5986b3d9e0cfca24d3d11df0a191d64e3f2fdadc2b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5285517a294a946b03a9b0928d3d1b67ffff43d8a1d91ebf6f6170596124cc04"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
