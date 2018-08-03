#!/bin/sh

if test ! $(which brew); then
  installing "Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

installing "Homebrew packages"

# cli tools
brew install wget
brew install htop

# python
brew install python
brew install python3

# development tools
brew install cmake # used for YCM in vim
brew install git
brew install fzf # used for fuzzy finding
brew install tmux
brew install zsh
