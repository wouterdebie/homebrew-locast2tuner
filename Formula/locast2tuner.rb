class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "2aed2d8773f03dae859480c7aa18074ebe7a5c76d914874866fc4277a94e0b1f"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.10"
    sha256 cellar: :any_skip_relocation, catalina:     "34fafc30e1346952fc28c0c5348076d704eec35ffb1d63ecbb075a1098c716fb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "56f6c433ceaae5ddf6b68a3b35b6b26d328adc62d9bf43a57ba915b0552e918b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
