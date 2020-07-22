" if hidden is not set, TextEdit might fail.
let g:coc_global_extensions = [
            \ 'coc-python',
            \ 'coc-tabnine',
            \ 'coc-json',
            \ 'coc-highlight',
            \ 'coc-yank',
            \ 'coc-explorer',
            \ 'coc-ultisnips',
            \ 'coc-vimlsp'
            \ ]
set hidden

set nobackup
set nowritebackup

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

"Explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
" nmap <leader>e :CocCommand explorer --preset floating<CR>
nmap <leader>e :CocCommand explorer<CR>
" coc-yank
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
