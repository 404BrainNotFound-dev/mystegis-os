#!/usr/bin/env bash 
set -euo pipefail 

cd "$(dirname "$0")/.."

echo "[*] copying installer into ISO profile. . . "

install -Dm755 \
	installer/mystegis-installer \
	archiso-profile/airootfs/usr/local/bin/mystegis-installer 

echo "[+] Installer Synchronized."

