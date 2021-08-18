class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8f3d8c404fa85e55517aa1ad3842941aea93185c0176214d1076b0984fdcfc5b"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.0"
    sha256 cellar: :any_skip_relocation, catalina:     "29bb211e2f94e292cc0b2b4b9e9b2626c0a323ea6b94e608db961b90536f83db"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "648d8aa383713d36a7c31eabcd1beddbe4f1b01cdc66747baaaf37a87567ac8e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
