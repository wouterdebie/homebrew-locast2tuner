class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.53.tar.gz"
  sha256 "79e250aedfe2f7aab26a460595ca38cf89da1e4819ebd97315408bc986730e08"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.53"
    sha256 cellar: :any_skip_relocation, catalina:     "04151d73033fbd59e240ee9d7d5fa411e70f97a069aeefa88c1b36779350d3a3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "24717bec9c3ee886f962af37bc7027321eb8a841a0db0ad3d766366b1bb424ce"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
