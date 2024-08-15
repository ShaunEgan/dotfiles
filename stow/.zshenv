# Ensure XDG Base Directory variables are set
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

# Tell git to use the XDG_CONFIG_HOME directory
export GIT_CONFIG_GLOBAL="${XDG_CONFIG_HOME}/git/config"

# Set zsh to use the XDG_CONFIG_HOME directory.
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
