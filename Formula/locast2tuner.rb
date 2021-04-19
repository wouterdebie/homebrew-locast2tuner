class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.28.tar.gz"
  sha256 "622c8ae6decc702161ff14582bf4a9db12427f08bcd04e0754c43122a68ad4bc"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.28"
    sha256 cellar: :any_skip_relocation, catalina:     "bec41a7b3274b471ff8494b045e75af4d13f8181f186e2e8d36cf2aa0095d397"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "74df0c05fae9eb1c01be9373bbaea4e34979c77bacc752d66f3e548917d45a74"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
