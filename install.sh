#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles

# TODO:
# - Ensure script runs properly irrespective of cd
# - Use env vars where applicable
# - More verbose comments
# - Some options, perhaps dry-run, etc

# Get the absolute path to the directory containing this script
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bash
ln -vis "$REPO_DIR/bash/.alias" "$HOME/.alias"
ln -vis "$REPO_DIR/bash/.bashrc" "$HOME/.bashrc"

# konsole
mkdir -vp "$HOME/.local/share/konsole"
ln -vis "$REPO_DIR/konsole/Linux.colorscheme" "$HOME/.local/share/konsole/Linux.colorscheme"
ln -vis "$REPO_DIR/konsole/chrisafk.profile" "$HOME/.local/share/konsole/chrisafk.profile"

mkdir -vp "$HOME/.config"
ln -vis "$REPO_DIR/konsole/konsolerc" "$HOME/.config/konsolerc"

# mpv
mkdir -vp "$HOME/.config/mpv"
ln -vis "$REPO_DIR/mpv/input.conf" "$HOME/.config/mpv/input.conf"
ln -vis "$REPO_DIR/mpv/mpv.conf" "$HOME/.config/mpv/mpv.conf"

# nvim
mkdir -vp "$HOME/.config/nvim"
ln -vis "$REPO_DIR/nvim/init.lua" "$HOME/.config/nvim/init.lua"

# starship
mkdir -vp "$HOME/.config"
ln -vis "$REPO_DIR/starship/starship.toml" "$HOME/.config/starship.toml"
