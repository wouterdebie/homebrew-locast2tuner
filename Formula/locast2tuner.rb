class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.25.tar.gz"
  sha256 "47b44c4ed5578b255b63b4bec007eb5a19ef91ae4c38cd8e2a20043cca89e7b2"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.25"
    sha256 cellar: :any_skip_relocation, catalina:     "886687c9129320866842f2d04414a38d5964445ba030a3f09044e0170b19822d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8be768cb9e19372e4bc7f8d58460b293376ca28eb9a6dcbac2f908d4def4443c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
