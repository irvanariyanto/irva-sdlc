#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.codex/skills}"
mkdir -p "$TARGET"
cp -R "$(cd "$(dirname "$0")/.." && pwd)/skills/." "$TARGET/"
echo "Installed SDLC skills to $TARGET"
