class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "1a491dd592619cf58007d27c54448c230f6396ff117af4b59472b0b09a568c92"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.2.8"
    sha256 cellar: :any_skip_relocation, catalina:     "2d7952e64f78b0faad9b90db06f33ccf2aa7de57b43078917f1e976465504841"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "54ed4d79552d0758a23e052a4c73110ab2eb80e04465d05c7773c71436616fd7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
