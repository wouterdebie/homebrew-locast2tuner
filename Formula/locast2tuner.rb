class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.21.tar.gz"
  sha256 "df1396838ced72a64d2e91f96c49333ec5a5cb7b9aa4d65cd4af743768ad855b"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.21"
    sha256 cellar: :any_skip_relocation, catalina:     "f5ad27d6d52e354f7804f883f32c8bbb23d906efbf3428d9dbe08019a4d2c6c6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ca0a6cc68d5513e7ded32a5b45e1f66ce487384c0bd866ecb059889a8f718bb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
