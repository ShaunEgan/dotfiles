#!/usr/bin/env bash

## Sets up your global git configuration. These are settings I find to be useful and want turned on by default. The
## script will also prompt you for your git username and email address.

git config --global init.defaultBranch main
git config --global core.editor vim
git config --global push.default current
git config --global core.excludesfile ${XDG_CONFIG_HOME:-${HOME}/.config}/git/.gitignore
git config --global alias.lg "log --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.pp "pull --prune"

printf "\n"

read -p "Enter your git username: " GIT_USERNAME
git config --global user.name "$GIT_USERNAME"

read -p "Enter your git email address: " GIT_EMAIL
git config --global user.email "$GIT_EMAIL"
