class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.39.tar.gz"
  sha256 "42ccf9d22f32a6ea263237b77cf1e7dc193feffe3805b3070e1c3cc2462e0bbd"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.39"
    sha256 cellar: :any_skip_relocation, catalina:     "54e6f12514a6daea9b3016477344896e17aca4602e4998353e22fc9d23c85c62"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ec030e22131986fd047306191deb1ea01b33c3c46ef2292a27537d35ff83632"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
