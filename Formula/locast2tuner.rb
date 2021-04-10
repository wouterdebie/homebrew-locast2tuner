class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "3d2870afb2d3d5fe19efd7fa1a25521b19bde6f94907204c38f984a6a1b0fbb9"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.9"
    sha256 cellar: :any_skip_relocation, catalina:     "6a31063ca7582aa11a1af5e89bb3f40cd65fa915dc95bed8d964d3d09701cdb9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9dd9bf5cc7afda0dbd24d5c31a89963c91f0cd8b7ace3791e2502bd3e40e6940"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
