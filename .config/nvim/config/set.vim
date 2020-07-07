set number
" set scrolloff=10
set relativenumber
set nocompatible
filetype plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a   "Ubuntu上中文不能准确地光标移动"
set smartindent
set updatetime=100  " save automatically when text is changed
au CursorHold * silent! update
set history=200     "ex commond history
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif
" Jump to last position in the file, see <url:vimhelp:last-position-jump>
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set termguicolors
set background=dark
" how to do 90% of what plugins do(with just vim)
filetype plugin on
set path+=**
set wildmenu
" set cursorcolumn  "or set cuc 设置光标所在的列
" set cursorline    "or set cul 设置光标所在的行
" let loaded_matchparen=1 "关闭括号匹配
set rtp+=~/.fzf
set backup
set backupdir=~/.config/nvim/backup
set undofile
set undodir=~/.config/nvim/undodir

autocmd FileType json let g:indentLine_conceallevel=0
" autocmd FileType json,markdown let g:indentLine_conceallevel=0
autocmd FileType javascript,python,c,cpp,java,vim,shell let g:indentLine_conceallevel=2

" 多个vim打开一个文件，则文件变为只读
au SwapExists * let v:swapchoice = 'o'


" Auto load
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
set autoread
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

"colorscheme
" let g:gruvbox_italic=1
" let g:gruvbox_contrast_light='soft'
" let g:gruvbox_italicize_strings=1
" let g:gruvbox_hls_cursor='blue'
" colorscheme gruvbox
" colorscheme oceanic_material
" colorscheme iceberg
" colorscheme srcery
" let g:seoul256_background = 233
" colo seoul256
" colorscheme onedark
" colorscheme palenight
" colorscheme zenburn
colorscheme deus

" set formatoptions+=mM
set iskeyword+=_,$,@,%,#,-
" set iskeyword+="，"
" set linebreak
" set showbreak=->

" let &showbreak = '↳ '
" set showbreak=↳↳↳↳
set showbreak=↳\ \ \ 
hi NonText ctermfg=gray guifg=pink10

" hi! link NonText Cursor
" 这行从最左端开始，间接模拟首行缩进
set cpo+=n
" set breakat+=\ \ .,?，。？
" set breakindent                         " Indent wrapped lines
" let &showbreak='  '                   " Indent amount
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us,cjk
autocmd FileType tex set linebreak

" Also break at a multi-byte character above 255
set formatoptions+=m
" When joining lines, don't insert a space between two multi-byte characters
set formatoptions+=B
" Where it makes sense, remove a comment leader when joining lines
set formatoptions+=j
" When formatting text, recognize numbered lists
set formatoptions+=n

set wrap " Wrap lines

" 行首行尾只有以下字符可以移动
set whichwrap+=<,>,h,l,[,]

" clear vert split and empty lines fillchar
if has('nvim')
    set fillchars=vert:\ ,eob:\ ,
else
    set fillchars=vert:\ ,
endif

" Use these symbols for invisible chars
" set list
" set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:»,precedes:«
set list
set listchars=tab:\|\ ,trail:▫
set ignorecase
set smartcase

" Optimize for fast terminal connections
set ttyfast
" 浮动效果失效
" set wildmode=longest,list,full
if has('syntax')
    set synmaxcol=2500              " Limit syntax highlighting (this
                                    " avoids the very slow redrawing
                                    " when files contain long lines).
endif

set conceallevel=0
set noswapfile
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" NeoVimTerminalColors:
let g:terminal_color_0  = '#282828'
let g:terminal_color_1  = '#cc241d'
let g:terminal_color_2  = '#00ffff'
let g:terminal_color_3  = '#d79921'
let g:terminal_color_4  = '#458588'
let g:terminal_color_5  = '#b16286'
let g:terminal_color_6  = '#689d6a'
let g:terminal_color_7  = '#a89984'
let g:terminal_color_8  = '#928374'
let g:terminal_color_9  = '#fb4934'
let g:terminal_color_10 = '#00df5f'
let g:terminal_color_11 = '#fabd2f'
let g:terminal_color_12 = '#00afff'
let g:terminal_color_13 = '#d3869b'
let g:terminal_color_14 = '#8ec07c'
let g:terminal_color_15 = '#ebdbb2'

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set nofoldenable
