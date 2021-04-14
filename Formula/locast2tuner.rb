class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.18.tar.gz"
  sha256 "e79a091ae270d26c086950635c0e9de0290f3caf21e8a2804a2807761ed15142"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.18"
    sha256 cellar: :any_skip_relocation, catalina:     "c96c7d4814cbf2862ba432f95f09535898bb2eba93003b0b523778d831ca0dfc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ff35bdf5abbaa76480d808ee3b775cb1c3045f6e52c867f1c8dc59de8720fb9e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
