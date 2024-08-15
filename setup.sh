#!/usr/bin/env bash

# Check for Homebrew, install if we don't have it
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed."
fi

# Function to install or upgrade a brew package
install_or_upgrade() {
  if brew list --formula | grep -q "^$1\$"; then
    echo "Upgrading $1..."
    brew upgrade "$1"
  else
    echo "Installing $1..."
    brew install "$1"
  fi
}

# Fonts
install_or_upgrade font-jetbrains-mono-nerd-font

# Shell
install_or_upgrade fzf
install_or_upgrade zsh
install_or_upgrade tmux
install_or_upgrade stow

# Development
install_or_upgrade git
install_or_upgrade python
install_or_upgrade python3
install_or_upgrade sublime-merge
install_or_upgrade sublime-text
install_or_upgrade vim
