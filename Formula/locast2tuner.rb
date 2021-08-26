class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "01fdff8354a4379e3835591b314bbb706f8a298730e3abc1dbc2d9c337619e94"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.7"
    sha256 cellar: :any_skip_relocation, catalina:     "8f4c6417a4c2a689e27c5be632bdd9b919fe79f5d2bef63757471fad1c27b3f0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "59e5f72a05864df2da7ce65311a390651d1bc0e6b9035667d9c104f3937e65d4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
