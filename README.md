# Dotfiles

My personal dotfiles, currently installing a small set of commonly used tools, as well as non-sensitive configuration.

## Wizard

There is a `wizard.sh` script which will prompt you to execute all steps in the correct order. You can skip any of the 
steps if required.

```shell
./wizard.sh
```

## Terminal Emulator and Shell

I am using [ITerm2](https://iterm2.com/), [font-jetbrains-mono-nerd-font](https://www.jetbrains.com/lp/mono/), 
[Zsh](https://www.zsh.org/) and [zinit](https://github.com/zdharma-continuum/zinit).

## Applications

Applications and fonts are installed using [Homebrew](https://brew.sh/). There is a [brew.sh](scripts/brew.sh) script 
which uses [brew-packages.txt](scripts/brew-packages.txt) as a list of formulas to install or upgrade. 

> [!NOTE]
> This script is executed by the wizard

## Application configuration (Dotfiles)

Dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/). The dotfiles linked to the current user's 
home directory can be found in the [stow](stow) directory.  

> [!NOTE]
> The `stow` command is executed by the wizard

## XDG

The repository tries to keep applications conformant with the XDG directory structures where possible.
