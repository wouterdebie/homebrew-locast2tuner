class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "91d03ff9f47851bf37dcd62c2bc7b2400d17ff255f359232a3a2c9e5a4e5fcbe"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.15"
    sha256 cellar: :any_skip_relocation, catalina:     "12c4822233268d92f4db1b61f785d3ae0ca401ceee13af6796d2a7f477e0e18b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "099a86bacc12cc163f1d3a17011e9077dedd823009daa694b0f62b7a6d57bd90"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
