class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.46.tar.gz"
  sha256 "50ac6c5b1a7f57f21ef4c79d7a4dc4a6497efc34a341f20da20a685534922adb"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.46"
    sha256 cellar: :any_skip_relocation, catalina:     "a6bcf3da61a20ff61dc262ddd3b2c6b6c8bd74124f35ec292ee665eb08ccdc93"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0f9d83e3bdd5ed57193c11022bd8df262757173bee785b378dcf0858f249a8fd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
