class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.50.tar.gz"
  sha256 "e948ffdb1c66ffe67209842b2df6d668500061414c051b347dbb6272e0b7520e"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.50"
    sha256 cellar: :any_skip_relocation, catalina:     "912f9ea94e28f00423af8b511c1d22b5748ac07ec94b3c42c691a425fa2f2a3f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bbe171d8e8d3dcb607cf8c8ba165b900d13dc75669533aade6261d579dd47434"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
