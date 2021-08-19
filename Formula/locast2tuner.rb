class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "72a55c1b6fde4f8f9654eeea4018b55090ace71c619faa453ada4546f3c2f7bb"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.5"
    sha256 cellar: :any_skip_relocation, catalina:     "19b1c8553b7436cd25a1d25e9d3a009115147541356e4b0f3d7de39ca27efc00"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f80848ac9488670ecb796783a194f841f9b8358fa2a5b3d74821c736a2d8a802"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
