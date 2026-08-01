#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
./scripts/sync.sh

echo "[*] cleaning previous build files. . ."
sudo rm -rf work
rm -rf out
mkdir -p out

echo "[*] Building Mystegis ISO..."
sudo mkarchiso -v -w work -o out archiso-profile

sudo chown "$USER:$USER" out/*.iso

echo
echo "[+] Build complete."
echo "[+] iSO location:"
ls -lh out/*.iso
