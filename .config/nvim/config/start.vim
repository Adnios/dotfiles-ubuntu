let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '/mnt/d/temp/GitHub/config-mark/todo.md' },
            \ ]
let g:startify_files_number = 20
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_enable_special = 0
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

nnoremap <localleader>sl :SLoad<CR>
nnoremap <localleader>ss :SSave<CR>
nnoremap <localleader>sd :SDelete<CR>
nnoremap <localleader>sc :SClose<CR>

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Show startify when there is no opened buffers, not goog with session
" autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
