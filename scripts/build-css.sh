#!/bin/sh
# Regenerates the precompiled Tailwind stylesheet from the classes used in index.html.
# Re-run after changing any classes in index.html.
set -e
cd "$(dirname "$0")/.."
WWW=www
npx --yes tailwindcss@3.4.17 -i scripts/tailwind.input.css -o "$WWW/vendor/app.css" --content "$WWW/index.html" --minify
