#!/bin/bash
# Visit https://github.com/lsd-rs/lsd/releases for latest releases.
mkdir -p ~/downloads
cd ~/downloads

ARCH=$(dpkg --print-architecture)
wget https://github.com/lsd-rs/lsd/releases/download/v1.1.5/lsd_1.1.5_${ARCH}.deb
sudo dpkg -i lsd_1.1.5_${ARCH}.deb

# Set lsd as the default ls (Ubuntu)
sudo update-alternatives --install /usr/bin/ls ls "/usr/bin/lsd" 110
