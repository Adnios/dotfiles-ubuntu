"let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_right_alt_sep = ''
"let g:airline_solarized_bg='dark'
"airline=======================================
" set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
" let g:airline_powerline_fonts = 1
" set laststatus=2  "永远显示状态栏
let g:airline_theme='deus' "选择主题
" let g:airline_theme='zenburn' "选择主题
" let g:airline_theme='base16' "选择主题
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
" let g:airline#extensions#tabline#formatter = 'default'  "formater
" tabline中buffer显示编号
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
" let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
" let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
" let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
" let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
" 有数字时是tab，关闭后该tab的buffer也被关闭

let g:airline#extensions#whitespace#enabled = 0
