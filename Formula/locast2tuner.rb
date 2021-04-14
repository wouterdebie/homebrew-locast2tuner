class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.17.tar.gz"
  sha256 "aca1e52744e6c819dffbc4a03453734c7a45f9db94754245eb0343158ca77536"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.17"
    sha256 cellar: :any_skip_relocation, catalina:     "b3e123b274be2389b7b4f5748011b8eae78a024dd8b84ccac4277a22c888ccd6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a645d3ed163e72c71564f08ef86af03c48a2a175abf4f0aca6371f8fb8bf7362"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
