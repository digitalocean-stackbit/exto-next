#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://widget.stackbit.com/init.js 6026622a1abc8f0016e151d5

echo "stackbit-build.sh: finished build"
