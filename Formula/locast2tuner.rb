class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "https://github.com/wouterdebie/locast2tuner/archive/refs/tags/v0.1.32.tar.gz"
  sha256 "ed738584892c9e3c1aaccf1d7327477bd15a8ffc554098c99e1d27fe03c30079"
  license "MIT"

  bottle do
    root_url "https://github.com/wouterdebie/homebrew-repo/releases/download/locast2tuner-0.1.32"
    sha256 cellar: :any_skip_relocation, catalina:     "217606e7a91c2949c31235a430c6d1761aa563e7a8c8442f60423b96715d21ff"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3556ccd063e11632273f4e8130c40e7575da9389b807d350bb07d595ae9606d8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
