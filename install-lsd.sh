#!/bin/bash
# Visit https://github.com/lsd-rs/lsd/releases for latest releases.
mkdir -p ~/downloads
cd ~/downloads

ARCH=$(dpkg --print-architecture)
wget https://github.com/lsd-rs/lsd/releases/download/v1.1.5/lsd_1.1.5_${ARCH}.deb
sudo dpkg -i lsd_1.1.5_${ARCH}.deb

# .profile.append has `alias ls=lsd` configuration.
# I do not recommend replacing the original `ls` command system-wide to prevent unexpected breakage of various shell scripts.
