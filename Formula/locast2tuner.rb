class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.33.tar.gz"
  sha256 "6fef8c0f700f42b34307f73e1b845bfc2b2fba4ae58b5abf4e1e2b4e999b4703"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
