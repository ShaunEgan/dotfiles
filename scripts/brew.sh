#!/usr/bin/env bash

# Check for Homebrew, install if we don't have it
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed."
fi

# Read package list and install or upgrade each one
package_list="brew-packages.txt"

if [[ -f "$package_list" ]]; then
  while IFS= read -r package || [[ -n "$package" ]]; do
    echo "Installing or upgrading $package..."
    brew install "$package"
  done < "$package_list"
else
  echo "Package list $package_list not found."
  exit 1
fi
