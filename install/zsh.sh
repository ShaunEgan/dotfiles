#!/usr/bin/env bash

installing "oh-my-zsh"

item_start "Installing"
if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &>/dev/null
    item_complete "done"
else
    item_complete "already exists"
fi

item_start "Linking"
if [ ! -f ~/.oh-my-zsh/themes/mytheme.zsh-theme ]; then
    ln -s $PWD/targets/zsh/mytheme.zsh-theme ~/.oh-my-zsh/themes/mytheme.zsh-theme &>/dev/null
    item_complete "done"
else
    item_complete "already exists"
fi
