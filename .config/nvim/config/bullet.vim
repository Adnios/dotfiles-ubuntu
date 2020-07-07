" let g:bullets_set_mappings = 0 " default = 1
let g:bullets_outline_levels = ['num', 'std-', 'std*']
" Example [keys pressed to get this bullet]:
" 1. first parent
"   a. child bullet [ <cr><C-t> ]
"     - unordered bullet [ <cr><C-t> ]
"   b. second child bullet [ <cr><C-d> ]
" 2. second parent [ <cr><C-d> ]
" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
