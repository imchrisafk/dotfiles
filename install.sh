#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles

# bash
ln -s ./bash/.alias ~/.alias
ln -s ./bash/.bashrc ~/.bashrc

# mpv
ln -s ./mpv/input.conf ~/.config/mpv/input.conf
ln -s ./mpv/mpv.conf ~/.config/mpv/mpv.conf

# nvim
ln -s ./nvim/init.lua ~/.config/nvim/init.lua

# starship
ln -s ./starship/starship.toml ~/.config/starship.toml
