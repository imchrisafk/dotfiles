# dotfiles

My personal configuration files.

## Contents

- [What's Included](#whats-included)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration Locations](#configuration-locations)

---

## What's Included

| App | Description |
|---|---|
| **bash** | Aliases, functions, and shell config |
| **bleachbit** | System cleaner preferences |
| **konsole** | Terminal profile and colour scheme |
| **mpv** | Media player keybinds and settings |
| **nvim** | Neovim config |
| **starship** | Cross-shell prompt configuration |

## Prerequisites

Make sure the following are installed before running the install script:

- `bash`
- `git`
- Any apps you want configs for (e.g. `neovim`, `mpv`, `starship`)

## Installation

1. **Clone the repository:**
```bash
   git clone https://codeberg.org/chrisafk/dotfiles.git
   cd dotfiles
```

2. **Make the install script executable:**
```bash
   chmod +x install.sh
```

3. **Run the install script:**
```bash
   ./install.sh
```

The script creates symbolic links from the repo to their proper config locations. It will:

- Automatically create any missing parent directories
- Prompt you when a config file already exists, giving you the option to overwrite or skip
- Set appropriate permissions on files (`0644`) and directories (`0755`)
- Verify source files exist before linking

> [!NOTE]
> Run the script from the **root of the cloned repository**.

## Configuration Locations

| Source | Target |
|---|---|
| `bash/.alias` | `~/.alias` |
| `bash/.bashrc` | `~/.bashrc` |
| `bash/.functions` | `~/.functions` |
| `bleachbit/bleachbit.ini` | `~/.config/bleachbit/bleachbit.ini` |
| `konsole/Linux.colorscheme` | `~/.local/share/konsole/Linux.colorscheme` |
| `konsole/chrisafk.profile` | `~/.local/share/konsole/chrisafk.profile` |
| `konsole/konsolerc` | `~/.config/konsolerc` |
| `mpv/input.conf` | `~/.config/mpv/input.conf` |
| `mpv/mpv.conf` | `~/.config/mpv/mpv.conf` |
| `nvim/init.lua` | `~/.config/nvim/init.lua` |
| `starship/starship.toml` | `~/.config/starship.toml` |
