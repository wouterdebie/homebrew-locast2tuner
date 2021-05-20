class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.38.tar.gz"
  sha256 "eae1009a290e81e866f9a7e5be4b483bddb7b180ad95fb01e3cb7b8fda9bc20b"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.38"
    sha256 cellar: :any_skip_relocation, catalina:     "9661f386ccaf40face8fd058c4bbf36fafe78ae249146e4905fa6eb481f41f6b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "eeb3c64fdffb0b8d2b8acb055fd9a38148ebaf6fa26ae6e8c75e789058cc308c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
