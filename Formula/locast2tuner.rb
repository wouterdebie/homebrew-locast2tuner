class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.9.tar.gz"
  sha256 "8f8429e8d0e70ee60e52e7cb5ab8c91368755bca33e736e3394114ee64a4ce91"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.9"
    sha256 cellar: :any_skip_relocation, catalina:     "db6e89ff613432b477ea6daab5232fe508441846cdc9744eb9d4e8decb9bb481"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c9dca9e3a62b2fa4136f6739524879f459e234418048231638b4b588d73dda13"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
