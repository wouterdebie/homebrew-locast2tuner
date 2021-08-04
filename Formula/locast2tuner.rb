class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.48.tar.gz"
  sha256 "1b3d348ac81a31fc03ddb351626c4a93c359aa27824cdcc2fad4437d82c5e5cb"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.48"
    sha256 cellar: :any_skip_relocation, catalina:     "a32c8a167860ce9a0eef46af6a50e801d833be2d10962ca3b42c933c374fa14a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d7f08531d051becf1dd919b2dd2e8ab2faf773162840c236d7cc4ae7e648d3ed"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
