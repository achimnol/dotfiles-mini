#! /bin/bash
# https://github.com/andrewkroh/gvm
# Visit https://github.com/andrewkroh/gvm/releases for latest releases.
GVM_VERSION="0.6.0"

sudo apt update; sudo apt install -y curl ca-certificates
ARCH=$(dpkg --print-architecture)
mkdir -p ~/.local/bin
curl -fsSL -o ~/.local/bin/gvm "https://github.com/andrewkroh/gvm/releases/download/v${GVM_VERSION}/gvm-linux-${ARCH}"
chmod +x ~/.local/bin/gvm

# To install and activate a Go version in the current shell:
#   eval "$(gvm 1.26.4)"
# .bashrc.append has the same line (guarded) to make it persistent.
