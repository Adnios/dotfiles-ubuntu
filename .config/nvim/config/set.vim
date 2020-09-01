set number
set relativenumber
set nocompatible
filetype plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
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

set iskeyword+=_,$,@,%,#
" set iskeyword+="，"
" set linebreak
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

set wrap " Wrap lines

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
" set so=99999

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

set nofoldenable
" set foldmethod=marker                   " 折叠方式为按照marker折叠
" harcode for reducing startup time
" let g:python3_host_prog='/usr/bin/python3'

set inccommand=nosplit

" Also break at a multi-byte character above 255
set formatoptions+=m
set formatoptions+=B
" Where it makes sense, remove a comment leader when joining lines Where it makes sense, remove a comment leader when joining lines

set formatoptions+=j
" When formatting text, recognize numbered lists
set formatoptions+=n

set formatoptions+=1         " Don't break lines after a one-letter word
set formatoptions-=t         " Don't auto-wrap text
set formatoptions-=o         " Disable comment-continuation (normal 'o'/'O')
set formatoptions+=mM
set formatoptions-=cro                  " Stop newline continution of comments

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


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


set display=lastline
