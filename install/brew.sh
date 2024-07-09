#!/bin/sh

if test ! $(which brew); then
  installing "Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

# cli tools
install_or_upgrade wget
install_or_upgrade htop

# python
install_or_upgrade python
install_or_upgrade python3

# development tools
install_or_upgrade cmake # used for YCM in vim
install_or_upgrade git
install_or_upgrade fzf # used for fuzzy finding
install_or_upgrade tmux
install_or_upgrade zsh
install_or_upgrade git-cola
install_or_upgrade vim # up-to-date vim
install_or_upgrade golang
install_or_upgrade gnupg
install_or_upgrade sublime-merge
install_or_upgrade sublime-text
