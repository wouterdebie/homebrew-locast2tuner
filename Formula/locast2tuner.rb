class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.44.tar.gz"
  sha256 "6839967c59efafcc24d6805d07353b54fab37b2903476a3e407425ca120b3809"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.44"
    sha256 cellar: :any_skip_relocation, catalina:     "0c18c51c2bc688a114860a24f890620a7bf09b9d40b0b8c633c50b2a508ff7b5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fde93611b6d06e9fd0f586c1a470f39f7f6ae5ecafb462e2bbc1c3b3d1482b06"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
