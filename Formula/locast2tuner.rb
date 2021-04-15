class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.19.tar.gz"
  sha256 "d536b56a73dc03a2fff643b56c44e2a3c43f1d72b6f72e3ec8623ef303584252"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.19"
    sha256 cellar: :any_skip_relocation, catalina:     "1ad3d648800feb03bd1cb89360558795ca874f7ca7b5ecb66a6bda84cca10029"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7e8456ef31ead424846074d5e05acbeb180708a69f124647e16bc4c9f705468e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
