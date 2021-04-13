class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "710c5147f4edb3b52c63423b79d44f659c798eab589398d24a052a801f2dd198"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.14"
    sha256 cellar: :any_skip_relocation, catalina:     "dbe894e5821713cf8e6f9b92efef756819fbe79c7f0e799d8bd38ad5a4460075"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "306c239512f6f9ac7b644678117d278c5b79e8277b9a192a62c699af9b75aca0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
