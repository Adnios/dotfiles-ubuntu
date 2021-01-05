set number
set relativenumber
set nocompatible
filetype plugin on
set noexpandtab     " Don't expand tabs to spaces
set tabstop=2       " The number of spaces a tab is
set shiftwidth=2    " Number of spaces to use in auto(indent)
set softtabstop=-1  " Automatically keeps in sync with shiftwidth
set smarttab        " Tab insert blanks according to 'shiftwidth'
set autoindent      " Use same indenting on new lines
set smartindent     " Smart autoindenting on new lines
set shiftround      " Round indent to multiple of 'shiftwidth'
set mouse=a   "Ubuntu 上中文不能准确地光标移动"
" set smartindent
set updatetime=100  " save automatically when text is changed
au CursorHold * silent! update
set history=200     "ex commond history
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif
" Jump to last position in the file, see <url:vimhelp:last-position-jump>
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set termguicolors
" how to do 90% of what plugins do(with just vim)
set path+=**
set wildmenu
" set cursorcolumn  "or set cuc 设置光标所在的列
" set cursorline    "or set cul 设置光标所在的行
" let loaded_matchparen=1 "关闭括号匹配
set rtp+=~/.fzf
set nobackup
set ruler
" set backup
" set backupdir=~/.config/nvim/backup
set undofile
set undodir=~/.config/nvim/undodir

" 多个 vim 打开一个文件，则文件变为只读
au SwapExists * let v:swapchoice = 'o'

" Auto load
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
" This cause q: error
autocmd FocusGained,BufEnter,CursorHoldI * if mode() != 'c' | checktime | endif
" autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
set autoread
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" 该行会使illuminate的配置失效
" set background=dark
" set formatoptions+=tcrqvmMB
" set iskeyword+=，,。,！,：,“,”,（,）,￥,％,＝,－,＋,×,、,？,《,》
set linebreak
set breakat-=_
" 折行后缩进
" set breakindent
" set showbreak=->

" let &showbreak = '↳ '
" set showbreak=↳↳↳↳
" 一起缩进
set breakindent
set breakindentopt=sbr
hi NonText ctermfg=gray guifg=gray

" hi! link NonText Cursor
" 这行从最左端开始
" set showbreak=↳\ \ \ 
" set showbreak=╰─➤
set cpo+=n
set completeopt=menuone,preview
" set linebreak
" set breakat=\ \	;:,!?           " Long lines break chars
" set breakat+=\ \ .,?，。？
" 字符间插入的像素行数目
set linespace=0
" set breakindent                         " Indent wrapped lines
" let &showbreak='  '                   " Indent amount
" autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us,cjk autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us,cjk
" autocmd FileType tex set linebreak

" set nowrap
set wrap
" autocmd FileType markdown set wrap

" 行首行尾只有以下字符可以移动
set whichwrap+=<,>,h,l,[,]

" clear vert split and empty lines fillchar
" not work with windows split
" if has('nvim')
"     set fillchars=vert:\ ,eob:\ ,
" else
"     set fillchars=vert:\ ,
" endif

" Use these symbols for invisible chars
" set list
" set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:»,precedes:«
set list
set listchars=tab:\¦\ ,trail:▫
set ignorecase
set smartcase

" Optimize for fast terminal connections
set ttyfast

if has('syntax')
    set synmaxcol=2500              " Limit syntax highlighting (this
                                    " avoids the very slow redrawing
                                    " when files contain long lines).
endif

set conceallevel=0
set noswapfile
" Set 7 lines to the cursor - when moving vertically using j/k
set so=2

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" NeoVimTerminalColors:
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


set virtualedit=block

" set wildmenu
" set wildmode=longest:list,full
" set paste
set clipboard=unnamedplus

exec "nohlsearch"

" set foldmethod=indent
" set nofoldenable
" set foldmethod=marker                   " 折叠方式为按照marker折叠
" harcode for reducing startup time
" let g:python3_host_prog='/usr/bin/python3'

set inccommand=nosplit


set formatoptions+=j
" When formatting text, recognize numbered lists
set formatoptions+=n

set formatoptions+=1         " Don't break lines after a one-letter word
set formatoptions-=t         " Don't auto-wrap text
set formatoptions+=mM
set formatoptions-=cro                  " Stop newline continution of comments
" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B
set formatoptions-=o         " Disable comment-continuation (normal 'o'/'O')
" 这样才生效，不知道为什么
autocmd FileType * set formatoptions-=o

" 复制粘贴的文字也会自动format，a表示autoformat
" set formatoptions+=a
" 离开插入模式自动format
" augroup myformatting
"     autocmd!
"     autocmd InsertLeave * normal gwap<CR>
" augroup END

augroup UserTermSettings " neovim only
  autocmd!
  autocmd TermOpen *
    \ setlocal signcolumn=no |
    \ setlocal nobuflisted |
    \ setlocal nospell |
    \ setlocal modifiable |
    \ nmap <silent><buffer> <Esc> <Cmd>hide<CR>|
    \ nmap <silent><buffer> q :q<CR> |
    \ hi TermCursor guifg= #ff5555 |
augroup END


highlight ColorColumn guibg=#23272e
set colorcolumn=81
" 如果markdown中插入代码，会很难受
set textwidth=80
set display=lastline
" set scrolloff=15
set sidescroll=0 "当光标到达屏幕边缘时，将自动扩展显示1/2屏幕的文本

augroup user_plugin_filetype "{{{
  autocmd!
  " Reload vim config automatically
  autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
        \ source $MYVIMRC | redraw

  " Reload Vim script automatically if setlocal autoread
  autocmd BufWritePost,FileWritePost *.vim nested
        \ if &l:autoread > 0 | source <afile> |
        \   echo 'source ' . bufname('%') |
        \ endif

  " Update filetype on save if empty
  autocmd BufWritePost * nested
        \ if &l:filetype ==# '' || exists('b:ftdetect')
        \ |   unlet! b:ftdetect
        \ |   filetype detect
        \ | endif

  " Highlight current line only on focused window
  autocmd WinEnter,InsertLeave * if &ft !~# '^\(denite\|clap_\)' |
    \ set cursorline | endif

  autocmd WinLeave,InsertEnter * if &ft !~# '^\(denite\|clap_\)' |
    \ set nocursorline | endif

  " Automatically set read-only for files being edited elsewhere
  autocmd SwapExists * nested let v:swapchoice = 'o'

  " Equalize window dimensions when resizing vim window
  autocmd VimResized * tabdo wincmd =

  " Force write shada on leaving nvim
  autocmd VimLeave * if has('nvim') | wshada! | else | wviminfo! | endif

  " Check if file changed when its window is focus, more eager than 'autoread'
  autocmd FocusGained * checktime

  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

  autocmd Syntax * if line('$') > 5000 | syntax sync minlines=200 | endif

  " https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
  autocmd FileType css,javascript,javascriptreact setlocal backupcopy=yes

  " Go (Google)
  autocmd FileType go
                     \  let b:coc_pairs_disabled = ['<']
                     \ | let b:coc_root_patterns = ['.git', 'go.mod']

  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

  " markdown
  autocmd FileType markdown
        \ setlocal expandtab smarttab nosmartindent
        \ | setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=80
  " Python
  autocmd FileType python
        \ setlocal expandtab smarttab nosmartindent
        \ | setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80

  " HTML (.gohtml and .tpl for server side)
  autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html

  autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

augroup END "}}}
