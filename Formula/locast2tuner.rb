class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "ff2d56c339255fcb6ec334101d85d4ae4906a75f18b127988592410376251719"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.4"
    sha256 cellar: :any_skip_relocation, catalina:     "f11c43935df458f18c5e3b6f7585c4d9fa0481b18897df8e3e2b94c6046e5efe"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a5d5499d878d12efe4e40cc069cd96dc5500215076ceccef21267ff611b08311"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
