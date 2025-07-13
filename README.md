# dotfiles-mini
A minimal set of dotfiles

## Assumption

- Ubuntu 22.04 or later
- x86_64 (amd64) or aarch64 (arm64) CPU architectures

## How to use

- Copy the `.config` directory and `.*` files into your home directory.
- Run `bash install-*.sh` and `bash configure-*.sh` for your choices of tools.
- Append the `.*.append` files to the corresponding files, like `cat .bashrc.append >> ~/.bashrc`.
