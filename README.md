# Dotfiles

My personal dotfiles, currently installing a small set of commonly used tools, as well as non-sensitive configuration.

## Quickstart

The following commands will install the applications, fonts and application dotfiles. Also, they will prompt you to 
configure your git.

```shell
./setup.sh
stow stow -t ~
```

## Applications

Applications and fonts are installed using brew. Applications that are already installed will be upgraded to the latest 
version.

## Terminal Emulator and Shell

I am currently using ITerm2, using the `font-jetbrains-mono-nerd-font`. Currently, I am using zsh, with zinit for 
plugins.

## Application configuration

Dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/). 
