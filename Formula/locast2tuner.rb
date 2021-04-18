class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.26.tar.gz"
  sha256 "765b3e73f2dafd010c2ad85c9504722414606764a81e72c75fcb9412c347bcc6"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.26"
    sha256 cellar: :any_skip_relocation, catalina:     "b4b2443a6a58ac3dbd0711d0a9440887b4051467b97e51098e828fd0ea58b6da"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2558a9ae9cd0784fcd157c991e1562ba32bac819768326ebf07e23fe7b659166"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
