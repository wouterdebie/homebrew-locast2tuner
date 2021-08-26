class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.8.tar.gz"
  sha256 "ea9771058a2d0b4e23e170486597c4595496f32240122e6ba2441394af0d15f5"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.8"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "69a10aa2695e9807df07d596a3545ec775cade11dd17e5ca47ed77be6e218033"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a4cd1c4e6fb3e1881a83cd0bac5fc53a0ce185355c2e0858d54732e3fa128a1c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
