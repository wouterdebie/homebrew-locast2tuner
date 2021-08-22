class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "f2471dc3f3b3f0ef6f2b76b819ad5827562aa1376ba71e44cf9d9fc68ca62df7"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.1"
    sha256 cellar: :any_skip_relocation, catalina:     "25fdebf5bafbf56be9f526052a229a1ca9adfcbdcc61713923c8f10748018266"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5ae12282014cd83c3fe25c4f0139e67472b619fd92dfa3bb16e88b532d9c714c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
