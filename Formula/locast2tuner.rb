class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.16.tar.gz"
  sha256 "be791d04747bacc8e36e4d322fdba0a7b910c22971dc9e054b59dbd7d9995750"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.16"
    sha256 cellar: :any_skip_relocation, catalina:     "0b92a0c536fb293a1728f5eecfe44ea9f93a5fabdcb4bc6d559ce3892cbd1930"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c348e8972df5ac97e4f923eb6b215eb69445c917a916e5b144502db5bb9e366"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
