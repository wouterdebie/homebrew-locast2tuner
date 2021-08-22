class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "c448038db28b06d77397fb81c9c4962dc70b0bf263416f174d748d866b526c9c"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.2"
    sha256 cellar: :any_skip_relocation, catalina:     "8e6176a037ac4f5a44af7931db5be894f0988d3c3907aad4029e84d4c353abf9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "33c51e72efb744c8ec086696378f8e5fb3f23fe29c3cce7b7f074bdc026e496b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
