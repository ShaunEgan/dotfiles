#!/usr/bin/env bash

# Function to prompt the user and return true/false
prompt_user() {
    local prompt_message="$1"
    read -p "$prompt_message (y/n): " -n 1 -r
    echo    # move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        return 0
    else
        return 1
    fi
}

# Step 1: Install Homebrew formulas
if prompt_user "Install Homebrew formulas?"; then
    pushd scripts || exit
    ./brew.sh
    popd || exit
else
    echo "Skipped Homebrew formulas installation."
fi

# Step 2: Link dotfiles
if prompt_user "Link dotfiles?"; then
    stow stow -t ~
else
    echo "Skipped linking dotfiles."
fi

# Step 3: Configure Git
if prompt_user "Configure Git?"; then
    pushd scripts || exit
    ./git-setup.sh
    popd || exit
else
    echo "Skipped Git configuration."
fi
