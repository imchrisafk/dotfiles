#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles

# TODO:
# - Ensure script runs properly irrespective of cd
# - Use env vars where applicable
# - Check if files exist, prompt user
# - More verbose comments
# - Some options, perhaps dry-run, verbose, etc

# bash
ln -s ./bash/.alias ~/.alias
ln -s ./bash/.bashrc ~/.bashrc

# mpv
mkdir -p ~/.config/mpv
ln -s ./mpv/input.conf ~/.config/mpv/input.conf
ln -s ./mpv/mpv.conf ~/.config/mpv/mpv.conf

# nvim
mkdir -p ~/.config/nvim
ln -s ./nvim/init.lua ~/.config/nvim/init.lua

# starship
ln -s ./starship/starship.toml ~/.config/starship.toml
