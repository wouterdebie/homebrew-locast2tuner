class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.9.tar.gz"
  sha256 "1a7ec51476bf854f068fbf90f7ea509ce5bdfb512b72ec52df42dd532d7a9aac"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.9"
    sha256 cellar: :any_skip_relocation, catalina:     "655ce203e110f0efde64d6930ba1d0231a0e79e9cb91ee9ae525c4ae6edc1eff"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d3d0ecbcd005b85483fb08d98c2c4de7289e8145cde630c7f55bfbe0c44c2fb2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
