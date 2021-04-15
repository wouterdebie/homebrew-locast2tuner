class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.22.tar.gz"
  sha256 "2c40b6a85b4e5884c0af5883baedaf38479661280e65ffc3eaba9cb82b26f375"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.22"
    sha256 cellar: :any_skip_relocation, catalina:     "dd862895415cc1100b1d0eee84e0b90718f72926a1880e37edf61525117f6b27"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "726fdcca3c819099cea10214b130a679b0a4701ab98bff33e1506a389f0e7cd9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
