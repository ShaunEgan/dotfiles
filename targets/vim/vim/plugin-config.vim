let g:airline_powerline_fonts = 1

" tern for vim
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout=1 " set timeout
let g:tern_show_argument_hints='on_hold' " display argument type hints when the cursor is left over a function
let g:tern_show_signature_in_pum='1' " display function signature in the completion menu

" YouCompleteMe
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0 " Disable the preview window

" vim-javascript
let g:javascript_plugin_jsdoc = 1

" javascript-libraries-syntax
let g:used_javascript_libs='ramda'

" coverage
let g:coverage_json_report_path = 'coverage/coverage-final.json'
let g:coverage_interval = 5000

" ale
let g:ale_linters = { 'javascript': ['standard'] }
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1 " disable linting when opening a file

" fzf
let g:fzf_layout = { 'down': '~25%' }
