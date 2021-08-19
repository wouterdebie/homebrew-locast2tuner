class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c933eb4afbeda99d86e47c0f480ca6824464d3585a843af27ecd29bf4e6b842d"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.1"
    sha256 cellar: :any_skip_relocation, catalina:     "85e2ad3ea3ffc67db30ea397ab7d411b358afb54807070c5725874a1347cf3f4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "08284b69dc0a49e9543169d3ec00987b173546c175556edea71314a8de6903b3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
