# dotfiles

A collection of my personal configuration files. So far encompassing bash, bleachbit, konsole, mpv, neovim, and starship.

## Repository Structure

Each application has a corresponding folder where its various configuration files are stored. All configuration files for a given application are stored in this folder without sub-directories, unless doing so would create some problem or ambiguity.

## Configuration File Locations

| Source Path | Target Location |
|-------------|-----------------|
| `bash/.alias` | `~/.alias` |
| `bash/.bashrc` | `~/.bashrc` |
| `bleachbit/bleachbit.ini` | `~/.config/bleachbit/bleachbit.ini` |
| `konsole/Linux.colorscheme` | `~/.local/share/konsole/Linux.colorscheme` |
| `konsole/chrisafk.profile` | `~/.local/share/konsole/chrisafk.profile` |
| `konsole/konsolerc` | `~/.config/konsolerc` |
| `mpv/input.conf` | `~/.config/mpv/input.conf` |
| `mpv/mpv.conf` | `~/.config/mpv/mpv.conf` |
| `nvim/init.lua` | `~/.config/nvim/init.lua` |
| `starship/starship.toml` | `~/.config/starship.toml` |

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://codeberg.org/chrisafk/dotfiles.git
    cd dotfiles
    ```
2. **Run the installation script:**
    ```bash
    ./install.sh
    ```

The script will:
- Create symbolic links from repository files to their proper locations
- Automatically create necessary parent directories
- In the case of a preexisting config file present you with the following options:
    - Overwrite existing file(s)
    - Skip, leaving the existing file in place
- An option to view diff between existing and proposed files will eventually be added

## Safety Features

- Creates necessary directories automatically
- Handles existing files/links with user prompts
- Destructive operations require user confirmation
- Ensures full path expansion for all files and directories

**Yet to be implemented:**
- Verifies source files exist prior to linking

## Usage Notes

- Run the script from the **root of the cloned repository**
- The script is idempotent - you can run it multiple times safely
- Existing configurations are preserved unless you choose to overwrite

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE) - see the [LICENSE](LICENSE) file for details.
