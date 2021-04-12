class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "86efa603721573d5c7f27a7d8f978d8b9a3432c5f085cd225f116155154d5904"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.11"
    sha256 cellar: :any_skip_relocation, catalina:     "d1835974d4ee78ed767ad0d0dccd44732118be15616245e4fc93b71594328762"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "81b674978d97bfce8b4f012243f1dde4480a2975ebe7e63770de3284322726ed"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
