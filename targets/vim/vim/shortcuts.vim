let mapleader = ','

" remap esc
inoremap jk <esc>

" NERDTree

" toggle nerdtree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" open nerdtree on the current file in the buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" fuzzy file search - if in a git project, use :GFiles, otherwise, use :FZF
if isdirectory(".git")
  nmap <silent> <c-o> :GFiles<cr>
else
  nmap <silent> <c-o> :FZF<cr>
endif
