class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.43.tar.gz"
  sha256 "f4b7d4e7cd4f7dd8ce9fd7e05805d9878f79a307d86d7e6625d0b96f88711be9"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.43"
    sha256 cellar: :any_skip_relocation, catalina:     "e1ac0ad80d2e9911a5224c95e45bac32c4ebb8d5fd96c18d50e680c505f13a52"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a3e2ea79b3151dfcddc84c6eed73f4cbb23b66a9287309d1e44ef4954a29b4b0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
