class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.10.tar.gz"
  sha256 "1b5bc154d45855210b3d60744c4516a1759312a345b1848701c38fc761053d4d"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.10"
    sha256 cellar: :any_skip_relocation, catalina:     "eb8224c9190ee7184570491427ec6536d695e5acaab1c1e79b4ceaba907142fe"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "33c544de517d66b30edad68144fead7a8059035f5342d0eba871dc1d8d0de641"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
