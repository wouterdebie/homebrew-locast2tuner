class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.37.tar.gz"
  sha256 "9640f50c061ad310233c1b72b4780be78db38c07acfc3d2673e8ff6ad3a43539"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.37"
    sha256 cellar: :any_skip_relocation, catalina:     "7f3ea614a1653fc8904a3f96ec1edb43d6e37b7fb153c204588e42ab523cef30"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b30450974a3a19d8128bfd7c65e1580490a227a8f31012c0af6071c51adc8d96"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
