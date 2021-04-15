class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.20.tar.gz"
  sha256 "28b472bf4041df78657dbc9782ea940cf5f485dac7c2175ff92c56d81b1d199d"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.20"
    sha256 cellar: :any_skip_relocation, catalina:     "6da62a76b80f832fb629a09c31035958057defe3757d4e33c300cb8f8156f30e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "75253b667e7b2b125ff73facc8681f5c5898225e9b79e04228fe27611ca4fd13"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
