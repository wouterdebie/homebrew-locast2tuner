#!/bin/bash

set -e

rm -rf venv
python3 -m venv venv
. ./venv/bin/activate
pip install -r requirements.txt
./venv/bin/poet -f i2cssh > Formula/i2cssh.rb

