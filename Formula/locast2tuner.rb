class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.29.tar.gz"
  sha256 "84e3ee17922ef782fce282ea2ff1839dd0c7a614f726aee4e02ccf7e131a88b2"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.29"
    sha256 cellar: :any_skip_relocation, catalina:     "b927ab878d0e7242f560c1a42677589c33f0b78174c5f1222af1db46f43dd999"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cc540931d110a20306dd24b66075938b0ee1e8b58e7ad93606cc13ff150f95fd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
