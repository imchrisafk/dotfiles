#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles

# TODO:
# - Ensure script runs properly irrespective of cd
# - Use env vars where applicable
# - Check if files exist, prompt user
# - More verbose comments
# - Some options, perhaps dry-run, verbose, etc

# bash
ln -vs ./bash/.alias ~/.alias
ln -vs ./bash/.bashrc ~/.bashrc

# mpv
mkdir -vp ~/.config/mpv
ln -vs ./mpv/input.conf ~/.config/mpv/input.conf
ln -vs ./mpv/mpv.conf ~/.config/mpv/mpv.conf

# nvim
mkdir -vp ~/.config/nvim
ln -vs ./nvim/init.lua ~/.config/nvim/init.lua

# starship
ln -vs ./starship/starship.toml ~/.config/starship.toml
