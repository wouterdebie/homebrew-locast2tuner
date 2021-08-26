class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.6.tar.gz"
  sha256 "68def8653b8de1210e1293b2e08bccfdca17bb3367681acbd4a36fa21d45b5d1"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.6"
    sha256 cellar: :any_skip_relocation, catalina:     "e38966e431351aba99b58473e8f67bc60f5cd7fc2a28c1ff7c4e776be25406bf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7ed31b12f85e0daa78db201c26bad4e69bcaf1b4e67c50e3a7c3b210ac49b617"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
