class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "70f04748650c813f4c36e01f31d6c02a1716901e5fdad56043476ec2b2367982"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.7"
    sha256 cellar: :any_skip_relocation, catalina:     "331546cc6b2a90105d1ca91d628be93f1591d2dad17abc32de55e85be5dda0e1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2953950d7f119bbd05208f6ec2f2b9c7d0309d3ec635244ac4068cc9dad1fab1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
