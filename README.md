# dotfiles-mini
A minimal set of dotfiles

Unlike [achimnol/dotfiles](https://github.com/achimnol/dotfiles), this repo does not contain any personal information like account names.

## Assumption

- Ubuntu 22.04 or later
- x86_64 (amd64) or aarch64 (arm64) CPU architectures

## How to use

- Copy the `.config` directory and `.*` files into your home directory.
- Run `bash install-*.sh` and `bash configure-*.sh` for your choices of tools.
- Append the `.*.append` files to the corresponding files, like `cat .bashrc.append >> ~/.bashrc`.
