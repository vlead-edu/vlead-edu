#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/private-preview-repo" >&2
  exit 1
fi

target_dir="$1"

if [ "$target_dir" = "/" ] || [ "$target_dir" = "." ]; then
  echo "Refusing unsafe target: $target_dir" >&2
  exit 1
fi

mkdir -p "$target_dir"

rsync -a \
  --exclude ".git" \
  --exclude ".github" \
  --exclude ".DS_Store" \
  index.html \
  past-recruitment.html \
  styles.css \
  robots.txt \
  assets \
  downloads \
  "$target_dir/"

echo "Preview site files exported to: $target_dir"
