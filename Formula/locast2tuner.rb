class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.45.tar.gz"
  sha256 "a3f7af1fdf403d0ffc6a3d7096328190191c868abfebce4192a33712cd3cc413"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.45"
    sha256 cellar: :any_skip_relocation, catalina:     "e6e70f63ce95ca2fb08a3ec74ff661db3e74b33a9f71a5536295f429449a2d4d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "671b92327d2efad792b52729a87d0534ccaf62c00d72f8726d324fec58a1b966"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
