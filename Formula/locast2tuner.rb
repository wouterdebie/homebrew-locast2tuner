class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "d4bf091a66e77ce37119b26a0d398cc3f181301cbb9147b02e066b35b4515c0e"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.3.4"
    sha256 cellar: :any_skip_relocation, catalina:     "3ebc75d102aedca46b91086f91e2aaf573b578aad0002810f457efb3ec93eb52"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6d298a4234f4eef0eeb47a48e94a31526487e791b71b51945a56c171cdb6b577"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
