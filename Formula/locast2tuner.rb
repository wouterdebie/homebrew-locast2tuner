class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.54.tar.gz"
  sha256 "4c067b0fb9f7f4ecf6ede77669338578728c449e59cfa2464b76bfdfcbe320c4"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.54"
    sha256 cellar: :any_skip_relocation, catalina:     "05ecd7894fc47fba2b786ce72e1323c4cabfde2d9da16c6f984332fe358fa64e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5548e603320ea2e6ccd984e9b1fec4bb944edcd392d34d1b20c91bdc8918d1d6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
