class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.11.tar.gz"
  sha256 "cbb4f65e5eff9e40ce82f1b0063f7ce56819ed00753255893686c9374b85f7c4"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.11"
    sha256 cellar: :any_skip_relocation, catalina:     "b0c75faa9e4732ae560d3f6cd19717e29217e88114f379a321c6132dd2e805cd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c7925f6e97877634983aaa3155b2a082535ccd791dd476a9d03375b49dd8345"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
