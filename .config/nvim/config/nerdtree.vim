nnoremap <leader>n :NERDTreeToggle<cr>
let g:NERDTreeShowLineNumbers=1  " 是否显示行号
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
