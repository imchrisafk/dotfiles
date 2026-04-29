#!/usr/bin/env bash

# Creates symlinks for the various configuration files included in https://codeberg.org/chrisafk/dotfiles
# Ensures proper permissions on source files and target directories

# TODO:
# - More verbose comments
# - Some options, perhaps dry-run, etc

# Paths
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -z "$XDG_CONFIG_HOME" || "$XDG_CONFIG_HOME" != /* ]]; then
    XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -z "$XDG_DATA_HOME" || "$XDG_DATA_HOME" != /* ]]; then
    XDG_DATA_HOME="$HOME/.local/share"
fi

# Permissions
DIR_PERMS=0700
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
    if [ ! -d "$dest" ]; then
        mkdir -vp "$(dirname "$dest")"
        chmod -v "$DIR_PERMS" "$(dirname "$dest")"
    fi

    # Create symlink (verbose, interactive, no-clobber if exists unless forced)
    ln -vis "$src" "$dest"
}

# bash
create_link "$REPO_DIR/bash/.alias" "$HOME/.alias"
create_link "$REPO_DIR/bash/.functions" "$HOME/.functions"
create_link "$REPO_DIR/bash/.bashrc" "$HOME/.bashrc"

# bleachbit
create_link "$REPO_DIR/bleachbit/bleachbit.ini" "$XDG_CONFIG_HOME/bleachbit/bleachbit.ini"

# konsole
create_link "$REPO_DIR/konsole/Linux.colorscheme" "$XDG_DATA_HOME/konsole/Linux.colorscheme"
create_link "$REPO_DIR/konsole/chrisafk.profile" "$XDG_DATA_HOME/konsole/chrisafk.profile"
create_link "$REPO_DIR/konsole/konsolerc" "$XDG_CONFIG_HOME/konsolerc"

# mpv
create_link "$REPO_DIR/mpv/input.conf" "$XDG_CONFIG_HOME/mpv/input.conf"
create_link "$REPO_DIR/mpv/mpv.conf" "$XDG_CONFIG_HOME/mpv/mpv.conf"

# nvim
create_link "$REPO_DIR/nvim/init.lua" "$XDG_CONFIG_HOME/nvim/init.lua"

# starship
create_link "$REPO_DIR/starship/starship.toml" "$XDG_CONFIG_HOME/starship.toml"
