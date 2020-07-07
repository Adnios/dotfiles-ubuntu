" nnoremap   <silent>   <leader>te    :FloatermNew<CR>
" tnoremap   <silent>   <leader>te    <C-\><C-n>:FloatermNew<CR>
" nnoremap   <silent>   <leader>tp    :FloatermPrev<CR>
" tnoremap   <silent>   <leader>tp   <C-\><C-n>:FloatermPrev<CR>
" nnoremap   <silent>   <leader>tn    :FloatermNext<CR>
" tnoremap   <silent>   <leader>tn    <C-\><C-n>:FloatermNext<CR>
" nnoremap   <silent>   <leader>th    :FloatermHide<CR>
" tnoremap   <silent>   <leader>th   <C-\><C-n>:FloatermHide<CR>
" ctrl+\, ctrl+n调节大小
nnoremap   <silent>   <leader>t   :FloatermToggle<CR>
tnoremap   <silent>   <leader>t   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <leader>r   :FloatermNew ranger<CR>
nnoremap   <silent>   <leader>g   :FloatermNew lazygit<CR>
" nnoremap   <silent>   <leader>tf   :FloatermNew fzf<CR>

" Floaterm
" let g:floaterm_gitcommit='floaterm'
" let g:floaterm_autoinsert=1
" let g:floaterm_width=0.9
" let g:floaterm_height=0.7
let g:floaterm_wintitle=1
" let g:floaterm_autoclose=1

augroup UserTermSettings " neovim only
  autocmd!
  autocmd TermOpen *
    \ setlocal signcolumn=no |
    \ setlocal nobuflisted |
    \ setlocal nospell |
    \ setlocal modifiable |
    \ nmap <silent><buffer> <Esc> <Cmd>hide<CR>|
    \ nmap <silent><buffer> q :q<CR> |
    \ hi TermCursor guifg=yellow |
augroup END

let g:floaterm_width = 0.9
let g:floaterm_height = 0.5
" let g:floaterm_height = 0.7
" let g:floaterm_position = 'center'
let g:floaterm_gitcommit = 'split'
let g:floaterm_autoclose = v:true
let g:floaterm_autohide = v:true
" let g:floaterm_rootmarkers   = ['.git', '.gitignore', '*.pro', 'Cargo.toml']

" opacity
let g:floaterm_winblend = 70

" let g:floaterm_borderchars = ''
" let g:floaterm_wintype = 'floating'
let g:floaterm_wintype = 'normal'
