# Add custom aliases
test -s ~/.alias && . ~/.alias || true

# Set NVim as manpager
export MANPAGER='nvim +Man!'

# Add personal bin file to path
export PATH="$PATH:~$(whoami)/bin/"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/$(whoami)/.lmstudio/bin"

# Starship config
eval "$(starship init bash)"

# Zoxide config
export _ZO_MAXAGE=20
eval "$(zoxide init bash)"
