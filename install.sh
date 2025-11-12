#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles
# Ensures proper permissions on source files and target directories

# TODO:
# - More verbose comments
# - Some options, perhaps dry-run, etc

# Paths
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
H_CFG="$HOME/.config"
H_LOC_SHR="$HOME/.local/share"

# bash
ln -vis "$REPO_DIR/bash/.alias" "$HOME/.alias"
ln -vis "$REPO_DIR/bash/.bashrc" "$HOME/.bashrc"

# konsole
mkdir -vp "$H_LOC_SHR/konsole"
ln -vis "$REPO_DIR/konsole/Linux.colorscheme" "$H_LOC_SHR/konsole/Linux.colorscheme"
ln -vis "$REPO_DIR/konsole/chrisafk.profile" "$H_LOC_SHR/konsole/chrisafk.profile"

mkdir -vp "$H_CFG"
ln -vis "$REPO_DIR/konsole/konsolerc" "$H_CFG/konsolerc"

# mpv
mkdir -vp "$H_CFG/mpv"
ln -vis "$REPO_DIR/mpv/input.conf" "$H_CFG/mpv/input.conf"
ln -vis "$REPO_DIR/mpv/mpv.conf" "$H_CFG/mpv/mpv.conf"

# nvim
mkdir -vp "$H_CFG/nvim"
ln -vis "$REPO_DIR/nvim/init.lua" "$H_CFG/nvim/init.lua"

# starship
mkdir -vp "$H_CFG"
ln -vis "$REPO_DIR/starship/starship.toml" "$H_CFG/starship.toml"
