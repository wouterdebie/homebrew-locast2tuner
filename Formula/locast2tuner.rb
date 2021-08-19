class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "3869fb7eabf6d0ac0f0eb06b60ffceefeac003fa69911abe9ea5c2937ac1fda9"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.3"
    sha256 cellar: :any_skip_relocation, catalina:     "74136973c285fbea908326a1d5887cba08ca336f1cfead1145f1da7bb4da9902"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e1c6d63e568eee4296551c50fb789ca94f8ff67b3926c7cdb5a5b5156f70851b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
