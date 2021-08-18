class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.55.tar.gz"
  sha256 "5eac5720f8153ee093a14b06e41863e7f51837c0db24c1b267ba3968b929100c"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.55"
    sha256 cellar: :any_skip_relocation, catalina:     "7e777e5fd5e5e9dd40dfe63f0aa65f8378eb026df4510bf12a561e160eb9d8bd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "060c3a5122f4841a70f5dbe711998cc4b57db0d73e5c71d3ed4ca2695e5c2dd9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
