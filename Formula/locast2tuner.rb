class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.30.tar.gz"
  sha256 "812506253752a267af7a06967fc545fc4e7340df478db9e750554fc42b866f7b"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.30"
    sha256 cellar: :any_skip_relocation, catalina:     "b028fc8299d233eee75d4d97db5881f93e40bb32c67f531c70c2f8aebee7c2a7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b3e191915ce1e5cf0be44ba058af8817ed0ab4e07a8c1ad0bb0045b0e34589a8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
