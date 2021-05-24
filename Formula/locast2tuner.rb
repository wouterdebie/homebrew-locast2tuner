class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.40.tar.gz"
  sha256 "de43a9bb6867442c2f11bd6389d0a0e764b762f7fa1741b985aeae02cf6de1c6"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.40"
    sha256 cellar: :any_skip_relocation, catalina:     "bd2bb9756f7d8cb4cc266eb2d733b82c1253003b7b4d2cc74c7f8d065a464473"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "924ced8e2c1ba9d25f4c0d2339acc0d98006169eeab1552c8e5e435a50222453"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
