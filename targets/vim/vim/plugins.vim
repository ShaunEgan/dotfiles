call plug#begin()

" colorschemes
Plug 'jacoborus/tender.vim'

" workspace
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer, git and icons
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' " fancy status line
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" testing tools
Plug 'ruanyl/coverage.vim' " code coverage
Plug 'w0rp/ale' " asynchronous lint execution

" javascript
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'jsx'], 'do': 'npm install' }
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript', 'jsx' ] } " syntax highlighting and indentation
Plug 'othree/jspc.vim', { 'for': [ 'javascript', 'jsx' ] } " javascript parameter complete
Plug 'othree/javascript-libraries-syntax.vim', { 'for': [ 'javascript', 'jsx' ] } " completion for certain libs
Plug 'jelera/vim-javascript-syntax', { 'for': [ 'javascript', 'jsx' ] } " enhanced javascript syntax for vim
Plug 'moll/vim-node', { 'for': [ 'javascript' ] } " node require navigation
Plug 'tpope/vim-commentary' " for commenting stuff out

" utilities
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.

call plug#end()
