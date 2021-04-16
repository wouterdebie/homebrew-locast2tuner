class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.24.tar.gz"
  sha256 "3bf5b01e4d5fd271405a5a161fec5ad27aa1a62e6707795371b060afdfa18f39"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.24"
    sha256 cellar: :any_skip_relocation, catalina:     "baf49be572be5142570bdae3ae2cba89c118e3990648ac5fb62e15b5fdeea92e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "343316dd51a790dde93eeaa84e0e76d03b474a13834843bbba5f3f0330a25dbd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
