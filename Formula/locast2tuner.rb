class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "ad3114654ce6c06f8aa3598d0c75345f602aa63a8e16706b45f7eb2ad5b03884"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.3"
    sha256 cellar: :any_skip_relocation, catalina:     "f13796dc8d0c11f55b264ef71c6fc40a18c064e678b7b58fdddce1c505d5f114"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b1c748d2484b7d0ee75a485279c9f31432733f776402746dd88a499c7ba5d2e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
