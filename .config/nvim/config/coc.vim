let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_disable_transparent_cursor = 1
let g:coc_global_extensions = [
            \ 'coc-python',
            \ 'coc-git',
            \ 'coc-gitignore',
            \ 'coc-tabnine',
            \ 'coc-json',
            \ 'coc-highlight',
            \ 'coc-snippets',
            \ 'coc-yank',
            \ 'coc-lists',
            \ 'coc-marketplace',
            \ 'coc-clangd',
            \ 'coc-vimlsp'
            \ ]

set hidden
set nobackup
set nowritebackup

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

nnoremap <silent> <localleader>y  :<C-u>CocList -A --normal yank<cr>

"Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
