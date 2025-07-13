#!/bin/bash
mkdir -p ~/downloads
cd ~/downloads
ARCH=$(uname -m)
NVIM_PATH="/usr/local/bin/nvim"
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-${ARCH}.appimage
sudo cp nvim-linux-${ARCH}.appimage "${NVIM_PATH}"

# Install extensions
git clone --depth=1 https://github.com/stevearc/oil.nvim ~/.local/share/nvim/site/pack/oil/start/oil.nvim
git clone --depth=1 https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/plenary/start/plenary.nvim
git clone --depth=1 https://github.com/nvim-telescope/telescope.nvim ~/.local/share/nvim/site/pack/telescope/start/telescope.nvim

# Set nvim as the default editor (Ubuntu)
sudo update-alternatives --install /usr/bin/vi vi "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/editor editor "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/view view "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/ex ex "${NVIM_PATH}" 110
