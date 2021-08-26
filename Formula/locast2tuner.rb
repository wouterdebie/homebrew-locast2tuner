class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.8.tar.gz"
  sha256 "0a97eee074df1c1399ed5b407300b95e1877dee040e65214f9bfaf91cdf1eed9"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.8"
    sha256 cellar: :any_skip_relocation, catalina:     "c2f1286ffceba947b4620588334b66783bcbb39f3cac265c0ee3a85a038702b9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ffc0d3860decc53a52d62620f3fea134bba0e03e861de0705e0a66e105fbba7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
