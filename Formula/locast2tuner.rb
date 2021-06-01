class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.42.tar.gz"
  sha256 "62db68d475d7177f0ded9e71a9677504354bb53ff14d63589522d5385f77cab3"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.42"
    sha256 cellar: :any_skip_relocation, catalina:     "8dc77e742d7c27b6857c3f07d79f3cabc108dc64fb0ea8d63474b637bd768bc6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fb8fa700f8bc44b703348e4e60ab59e671b968eed096973264b3400a997b320d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
