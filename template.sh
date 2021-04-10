#!/bin/bash
set -e
set -o pipefail

LATEST_TAG=$1

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

ARCHIVE="https://github.com/wouterdebie/locast2tuner/archive/refs/tags/${LATEST_TAG}.tar.gz"
SHA=$(curl -f -s -L -o - ${ARCHIVE} | sha256sum | cut -d' ' -f1)

read -r -d '' TEMPLATE <<- EOM || true
class Locast2tuner < Formula
  desc "Rust implementation of locast2dvr"
  homepage "https://github.com/wouterdebie/locast2tuner"
  url "${ARCHIVE}"
  sha256 "${SHA}"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
EOM

echo "$TEMPLATE"
