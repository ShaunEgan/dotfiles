#!/usr/bin/env bash

git config --global init.defaultBranch main
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore

printf "\n"

read -p "Enter your git username: " GIT_USERNAME
git config --global user.name "$GIT_USERNAME"

read -p "Enter your git email address: " GIT_EMAIL
git config --global user.email "$GIT_EMAIL"
