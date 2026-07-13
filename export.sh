#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p docs
./app --render > docs/index.html
cp app.wasm docs/app.wasm
touch docs/.nojekyll
echo "exported docs ($(wc -c < docs/index.html)B html)"
