#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
dist_dir="${1:-$repo_root/dist}"
mkdir -p "$dist_dir"

for skill in ivan-human-ui ivan-youmind-skill-cover; do
  archive="$dist_dir/${skill}.zip"
  rm -f "$archive"
  (
    cd "$repo_root/plugins/ivan-skill-pack/skills"
    zip -qr "$archive" "$skill" -x '*/.DS_Store'
  )
  unzip -tq "$archive" >/dev/null
  printf 'Packaged %s\n' "$archive"
done
