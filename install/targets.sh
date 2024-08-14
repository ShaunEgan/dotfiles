#!/usr/bin/env bash

# Executes pushd without stdout output
quiet_pushd () {
    command pushd "$@" > /dev/null
}

# Executes popd without stdout output
quiet_popd () {
    command popd "$@" > /dev/null
}

# Creates dotfiles as symbolic links to all files and directories from the home directory from the contents of the
# target directory
link_target () {
  quiet_pushd $1
  files=(*)

  for file in "${files[@]}"
  do
    ln -sfn ${PWD}/${file} ~/.${file} || true # link file and continue after errors thrown by ln
  done
  quiet_popd
}

installing "configs"

quiet_pushd configs
configs=(*/)

for config in "${configs[@]}"
do
  item_start $(basename ${config})
  link_target $config
  item_complete "Linked"
done

quiet_popd
