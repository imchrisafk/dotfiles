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

# Permissions
DIR_PERMS=0755
FILE_PERMS=0644

# Helper function
create_link() {
    local src="$1"
    local dest="$2"

    # Check if source file exists
    if [ ! -f "$src" ]; then
        echo "Error: Source file $src does not exist. Skipping."
        return 1
    fi

    # Ensure source has correct file permissions
    chmod -v "$FILE_PERMS" "$src"

    # Create parent directory if needed
    mkdir -vp "$(dirname "$dest")"
    chmod -v "$DIR_PERMS" "$(dirname "$dest")"

    # Create symlink (verbose, interactive, no-clobber if exists unless forced)
    ln -vis "$src" "$dest"
}

# bash
create_link "$REPO_DIR/bash/.alias" "$HOME/.alias"
create_link "$REPO_DIR/bash/.functions" "$HOME/.functions"
create_link "$REPO_DIR/bash/.bashrc" "$HOME/.bashrc"

# bleachbit
create_link "$REPO_DIR/bleachbit/bleachbit.ini" "$H_CFG/bleachbit/bleachbit.ini"

# konsole
create_link "$REPO_DIR/konsole/Linux.colorscheme" "$H_LOC_SHR/konsole/Linux.colorscheme"
create_link "$REPO_DIR/konsole/chrisafk.profile" "$H_LOC_SHR/konsole/chrisafk.profile"
create_link "$REPO_DIR/konsole/konsolerc" "$H_CFG/konsolerc"

# mpv
create_link "$REPO_DIR/mpv/input.conf" "$H_CFG/mpv/input.conf"
create_link "$REPO_DIR/mpv/mpv.conf" "$H_CFG/mpv/mpv.conf"

# nvim
create_link "$REPO_DIR/nvim/init.lua" "$H_CFG/nvim/init.lua"

# starship
create_link "$REPO_DIR/starship/starship.toml" "$H_CFG/starship.toml"

#yt-dlp
create_link "$REPO_DIR/yt-dlp/config" "$H_CFG/yt-dlp/config"
