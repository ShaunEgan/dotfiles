set encoding=UTF-8

set nocompatible		" not compatible with vi
set t_ut=
set t_Co=250        " Explicitly tell vim that the terminal supports 256 colors

colorscheme tender
syntax on

highlight LineNr ctermfg=8

" Hybrid line numbers
set number relativenumber

" Tab control
set expandtab               " on pressing tab, insert spaces
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2               " the visible width of tabs
set softtabstop=2           " edit as if the tabs are 2 characters wide
set shiftwidth=2            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'

set shell=$SHELL

autocmd BufWritePre *.js %s/\s\+$//e  " Automatically strip trailing white space
