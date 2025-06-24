#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required to run this script" >&2
  exit 1
fi

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or with sudo" >&2
  exit 1
fi

bash "$SCRIPT_DIR/install.sh" "$@" || {
  echo "Installation failed" >&2
  exit 1
}
