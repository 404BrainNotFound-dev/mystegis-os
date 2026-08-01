#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "[*] Synchronizing project files..."
./scripts/sync.sh

echo "[*] Cleaning previous build..."
sudo rm -rf work out
mkdir -p out

echo "[*] Building Mystegis ISO..."
sudo mkarchiso -v \
    -w work \
    -o out \
    archiso-profile

sudo chown "$USER:$USER" out/*.iso

echo
echo "[+] Build complete."
echo "[+] ISO location:"
ls -lh out/*.iso
