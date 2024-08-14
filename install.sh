#!/bin/bash

# Useful shell text formatting
None='\033[00m'
Red='\033[01;31m'
Green='\033[01;32m'
Yellow='\033[01;33m'
Purple='\033[01;35m'
Cyan='\033[01;36m'
White='\033[01;37m'
Bold='\033[1m'
Underline='\033[4m'

title () {
  echo -e "${Underline}${Cyan}$@${None}"
}

information () {
  echo -e "\n${Cyan}$@${None}"
}

installing () {
  title "\nInstalling $@"
}

item () {
  information "  $@"
}

item_start () {
  echo -n -e "${Cyan}  $1... ${None}"
}

item_complete () {
  echo -e "${Cyan}$@${None}"
}

title 'Installing dotfiles'

read -p "$(echo -e ${Green}Install homebrew packages?) " -n 1 -r
echo -e ${None}
if [[ $REPLY =~ ^[Yy]$ ]]
then
  source install/brew.sh
fi

source install/zsh.sh
source install/targets.sh

information 'Dotfile installation complete'
