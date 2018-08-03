# Dotfile

A basic dotfiles repository which sets up my shell environment.

## Installation

```sh
./install.sh
```

Then you will need to open vim and run a `:PlugInstall`

You will probably want to use iTerm2, with the font set to SauceCodeProd Nerd Font - Medium - 10

## Extension

Customisation to the general installation process can be done in the `./install` directory. Adding new
dotfile targets can be done in the `targets` directory.

### Adding symbolically linked files
Each subdirectory will be inspected as groups of related configuration. All files and directories will be symlinked into 
the current user's home directory with a dot prefix. Eg

```
./targets/vim/vimrc -> ~/.vimrc
./targets/vim/vim -> ~/.vim
```
