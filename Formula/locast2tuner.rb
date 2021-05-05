class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.33.tar.gz"
  sha256 "6fef8c0f700f42b34307f73e1b845bfc2b2fba4ae58b5abf4e1e2b4e999b4703"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.33"
    sha256 cellar: :any_skip_relocation, catalina:     "bf87b1aa3befb12738746dc187b9d37571083d559af1e4577cfc8d215f98a231"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "23e902a11997a1a05869750d2a2224fffbc7005b22a1c5af6c2bca001015baf3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
