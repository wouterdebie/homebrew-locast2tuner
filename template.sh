#!/bin/bash
set -e

LATEST_TAG=$1
ARCHIVE="https://github.com/wouterdebie/locast2tuner/archive/refs/tags/${LATEST_TAG}.tar.gz"
echo "Fetching $ARCHIVE"
SHA=$(curl -L -o - ${ARCHIVE} | sha256sum)
echo "Sha256: $SHA"

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
