class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.41.tar.gz"
  sha256 "8bbbcef28a4c7ce04947b88d9ac81388c0c95282b1a19201f39848ad67112add"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.41"
    sha256 cellar: :any_skip_relocation, catalina:     "ea8715c3e629312c388a16054c62dcaefb2595ec48144963830bcdb1ccfdf319"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8948343e537f4e7726f2c0643756536146265e9f195f820cdad3d4a6d036e294"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
