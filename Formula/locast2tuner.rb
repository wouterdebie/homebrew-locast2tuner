class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.31.tar.gz"
  sha256 "468df497130990444a12c6ebdff8eb46a523eea9fb981f4308c06d0a7fccd7f2"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.31"
    sha256 cellar: :any_skip_relocation, catalina:     "f36f88dcb164b6409b4f4e4d1bf5c80b6b78fd5f2d175b34b95beaacb8e23f3d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9facb780df55b2d973012612f654a0022e4775239c42b3fbc95e30f53d93d83f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
