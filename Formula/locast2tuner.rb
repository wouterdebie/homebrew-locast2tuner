class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "93974d02ac9b23a226fd32ecf50c271c4bc8aec2a0a76919fe0925f2ad63bb4f"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.0"
    sha256 cellar: :any_skip_relocation, catalina:     "ddaf4d285c6d5e583e1b6bc74d5db55064f97bc3086496cfc51f8dba1797a986"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2d0d9be9142e2f854b325149214c3da4d6d41356937115b400ea33ab0a8fbfdf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
