class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.23.tar.gz"
  sha256 "87238ce6937dcade888934a92aa4120e9053d75957becbc838d8f2660d14e378"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.23"
    sha256 cellar: :any_skip_relocation, catalina:     "61540b929b7e0d506d743a2cd1f46d0d18ab8f1f88ab1d2b450046f068984744"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f7f937ba3e7fca449e4e465e67ad7595f8c74c2b2c4446488e04f24298999fd4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
