#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "[*] cleaning previous build files. . ."
sudo rm -rf work
mkdir -p out

echo "[*] Building Mystegis ISO..."
sudo mkarchiso -v -w work -o out archiso-profile

echo
echo "[+] Build complete."
echo "[+] iSO location:"
ls -lh out/*.iso
