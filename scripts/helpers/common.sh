#!/usr/bin/env bash

error_exit() {
  echo "Error: $1" >&2
  exit 1
}

log() {
  echo "[INFO] $1"
}
