#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles

# TODO:
# - Ensure script runs properly irrespective of cd
# - Use env vars where applicable
# - More verbose comments
# - Some options, perhaps dry-run, etc

# bash
ln -vis ./bash/.alias ~/.alias
ln -vis ./bash/.bashrc ~/.bashrc

# konsole
mkdir -vp ~/.local/share/konsole
ln -vis ./konsole/Linux.colorscheme ~/.local/share/konsole/Linux.colorscheme
ln -vis ./konsole/chrisafk.profile ~/.local/share/konsole/chrisafk.profile

mkdir -vp ~/.config
ln -vis ./konsole/konsolerc ~/.config/konsolerc

# mpv
mkdir -vp ~/.config/mpv
ln -vis ./mpv/input.conf ~/.config/mpv/input.conf
ln -vis ./mpv/mpv.conf ~/.config/mpv/mpv.conf

# nvim
mkdir -vp ~/.config/nvim
ln -vis ./nvim/init.lua ~/.config/nvim/init.lua

# starship
mkdir -vp ~/.config
ln -vis ./starship/starship.toml ~/.config/starship.toml
