class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.27.tar.gz"
  sha256 "5f3625f65dc39d7d30055590d1c18a793275216766a7abc67d015630fd8a8936"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.27"
    sha256 cellar: :any_skip_relocation, catalina:     "79afb42be0b16e01fbd3cbe77e97472ee1149a40dde385b77c1751831145b86e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "24abb8ea5fd6671bcb10f502754e1abc67fff4ac3ff253aa5322608269427013"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
