#!/usr/bin/env bash

if test ! $(which brew); then
  installing "Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shaunegan/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

function install_or_upgrade {
  if brew ls --versions "$1" > /dev/null; then
    echo "Upgrading $1"
    brew upgrade "$1"
  else
    echo "Installing $1"
    brew install "$1"
  fi
}

installing "Homebrew packages"

# Fonts
install_or_upgrade font-jetbrains-mono-nerd-font

# cli tools
install_or_upgrade wget
install_or_upgrade htop

# python
install_or_upgrade python
install_or_upgrade python3

# development tools
install_or_upgrade git
install_or_upgrade fzf
install_or_upgrade tmux
install_or_upgrade zsh
install_or_upgrade vim
install_or_upgrade gnupg
install_or_upgrade sublime-merge
install_or_upgrade sublime-text
install_or_upgrade dos2unix
