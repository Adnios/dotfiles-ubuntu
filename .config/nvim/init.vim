au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" -------------------------------------------------
" Plug
" -------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    "Keep and restore fcitx state for each buffer
    Plug 'vim-scripts/fcitx.vim'
    " 文件树 coc-explore 代替，coc-explore 太卡
    Plug 'scrooloose/nerdtree'          " File tree manager
    Plug 'jistr/vim-nerdtree-tabs'      " enhance nerdtree's tabs
    Plug 'ryanoasis/vim-devicons'       " add beautiful icons besides files
    Plug 'Xuyuanp/nerdtree-git-plugin'  " display git status within Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " enhance devicons
    " 括号匹配
    Plug 'jiangmiao/auto-pairs'
    " 需要手动在 coc.nvim 目录下 yarn install
    " nodejs apt 安装 npm 等，sudo npm cache clean -f|sudo npm install -g
    " n|sudo n stable 更新 npm, 解决：checkhealth 的 npm 报错
    " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " 状态栏
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'dense-analysis/ale'
    Plug 'yggdroot/indentline'
    let g:indentLine_setColors = 0
    Plug 'easymotion/vim-easymotion'
    " Plug 'tpope/vim-surround'
    Plug '~/.fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'
    " colorscheme
    " Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'morhetz/gruvbox'
    Plug 'srcery-colors/srcery-vim'
    Plug 'cocopon/iceberg.vim'
    " Plug 'junegunn/seoul256.vim'
    Plug 'ajmwagar/vim-deus'
    Plug 'hardcoreplayers/oceanic-material'
    " Plug 'joshdick/onedark.vim'
    " Plug 'drewtempelmeyer/palenight.vim'
    " syntax
    Plug 'sheerun/vim-polyglot' "有点卡，coc 的原因
    Plug 'mboughaba/i3config.vim' "i3
    " markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dkarter/bullets.vim'
        let g:vim_markdown_folding_disabled = 1
        let g:vim_markdown_override_foldtext = 0
        let g:vim_markdown_no_default_key_mappings = 1
        let g:vim_markdown_emphasis_multiline = 0
        set conceallevel=2
        let g:vim_markdown_conceal=0
        let g:vim_markdown_conceal_code_blocks = 0
        let g:vim_markdown_frontmatter=1
        let g:vim_markdown_toc_autofit = 1
        let g:mkdp_auto_close = 0
        " " Add support for markdown files in tagbar.
        let g:tagbar_type_markdown = {
            \ 'ctagstype': 'markdown.pandoc, markdown',
            \ 'ctagsbin' : '~/.config/nvim/plugged/markdown2ctags/markdown2ctags.py',
            \ 'ctagsargs' : '-f - --sort=yes --sro=»',
            \ 'kinds' : [
                \ 's:sections',
                \ 'i:images'
            \ ],
            \ 'sro' : '»',
            \ 'kind2scope' : {
                \ 's' : 'section',
            \ },
            \ 'sort': 0,
        \ }
    " latex
    Plug 'lervag/vimtex'
    " Plug 'dhruvasagar/vim-table-mode'
    " Plug 'ron89/thesaurus_query.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'majutsushi/tagbar'
    Plug 'jszakmeister/markdown2ctags'
    Plug 'voldikss/vim-floaterm'
    " code
    Plug 'Chiel92/vim-autoformat'
    Plug 'airblade/vim-rooter'
    " ranger
    " Plug 'rbgrouleff/bclose.vim' "neovim 加上，否则 ranger 存在 buffer 内，对 floaterm 也有效
    " Plug 'francoiscabrol/ranger.vim'
    " vim-which-key
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    " highlight
    Plug 'RRethy/vim-illuminate'
    " tabs
    " Plug 'mg979/vim-xtabline' "影响 buffer 使用
    Plug 'rhysd/clever-f.vim'
    " Plug 'bling/vim-bufferline' "在 command 显示 buffer
    " Plug 'justinmk/vim-sneak' "; cannot work
    " Plug 'unblevable/quick-scope'
    " git
    Plug 'mhinz/vim-signify'
    " Plug 'airblade/vim-gitgutter'
    " Plug 'tpope/vim-fugitive'
    " Plug 'tpope/vim-rhubarb'
    " Plug 'junegunn/gv.vim'
    Plug 'junegunn/goyo.vim'
    " 中文排版
    Plug 'hotoo/pangu.vim'
call plug#end()

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:tagbar_width = 20

let g:rooter_change_directory_for_non_project_files = 'current'

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end


autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" -------------------------------------------------
" setting
" -------------------------------------------------
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
set mouse=a   "Ubuntu 上中文不能准确地光标移动"
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
set nobackup
set ruler
" set backup
" set backupdir=~/.config/nvim/backup
set undofile
set undodir=~/.config/nvim/undodir

autocmd FileType json let g:indentLine_conceallevel=0
" autocmd FileType json,markdown let g:indentLine_conceallevel=0
autocmd FileType javascript,python,c,cpp,java,vim,shell let g:indentLine_conceallevel=2

" 多个 vim 打开一个文件，则文件变为只读
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

set formatoptions+=mM
set iskeyword+=_,$,@,%,#,-
" set iskeyword+="，"
" set linebreak
" 折行后缩进
" set breakindent
" set showbreak=->

" let &showbreak = '↳ '
" set showbreak=↳↳↳↳
set showbreak=↳\ \ \ 
set breakindent
set breakindentopt=sbr
" hi NonText ctermfg=gray guifg=pink10

" hi! link NonText Cursor
" 这行从最左端开始，间接模拟首行缩进
set cpo+=n
set completeopt=menuone,preview
" set linebreak
" set breakat=\ \	;:,!?           " Long lines break chars
" set breakat+=\ \ .,?，。？
" 字符间插入的像素行数目
set linespace=0
" set breakindent                         " Indent wrapped lines
" let &showbreak='  '                   " Indent amount
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us,cjk
autocmd FileType tex set linebreak

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
set listchars=tab:\¦\ ,trail:▫
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

set nofoldenable

set virtualedit=block

set wildmenu
set wildmode=longest:list,full

" -------------------------------------------------
" keymap
" -------------------------------------------------
let g:mapleader = ";"
let g:maplocalleader = "\<Space>" "vimtex 被修改
map <F12> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>q :q!<CR>
"复制粘贴的斗争
vnoremap <C-c> "+y
vnoremap <C-x> "+c
" nnoremap <leader>v :set paste<CR>a<C-R>+<ESC>:set nopaste<CR>
inoremap <C-v> <ESC>:set paste<CR>a<C-R>+<ESC>:set nopaste<CR>a
noremap <leader>c :bd!<CR>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" nnoremap <C-K> K
" vnoremap J 5j
" vnoremap K 5k
" nnoremap J 5j
" nnoremap K 5k
" nnoremap H ^
" nnoremap L $
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
vnoremap > >gv
vnoremap < <gv
nnoremap <leader><CR> :nohl<CR>
nmap <leader><leader> :call Run()<CR>
func! Run()
    exec "w"
    if &filetype == 'c'
        exec '!gcc % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'           "这个配置解决了不能 cin 的麻烦
        :w
        set splitbelow
        exec '!g++ -std=c++11 % -Wall -o %<'
        :sp
        ":res -15
        :term ./%<
    elseif &filetype == 'python'
        :w
        set splitbelow
        :sp
        :term python3 %
    elseif &filetype == 'markdown.pandoc'
        exec "MarkdownPreview"
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc

" Buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>w
tnoremap <leader>w <C-\><C-N><C-w>w
nnoremap <BS> :tabe<CR>:-tabmove<CR>:term sh -c 'alacritty'<CR><C-\><C-N>:q<CR>

nnoremap Y y$

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
nnoremap <leader>p :Pangu<CR>
" nnoremap j gj
" nnoremap k gk
" nnoremap gj j
" nnoremap gk k

" -------------------------------------------------
" vim-which-key
" -------------------------------------------------
set timeoutlen=500 "设置为 100 会导致 floaterm,gcc 问题
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey ';'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ';'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>

let g:which_key_use_floating_win = 0
" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_map = {}

" autocmd VimEnter * call which_key#register(';', "g:which_key_map")
autocmd! User vim-which-key call which_key#register(';', 'g:which_key_map')

" You can pass a descriptive text to an existing mapping.

" let g:which_key_map.f = { 'name' : '+file' }

" nnoremap <silent> <leader>fs :update<CR>
" let g:which_key_map.f.s = 'save-file'

" nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
" let g:which_key_map.f.d = 'open-vimrc'

" nnoremap <silent> <leader>oq  :copen<CR>
" nnoremap <silent> <leader>ol  :lopen<CR>
" let g:which_key_map.o = {
"       \ 'name' : '+open',
"       \ 'q' : 'open-quickfix'    ,
"       \ 'l' : 'open-locationlist',
"       \ }

let g:which_key_map[','] = [ 'Startify'                   , 'Startify' ]
let g:which_key_map.s = {
      \ 'name' : '+session' ,
      \ }
let g:which_key_map['1'] = [ '<Plug>AirlineSelectTab1', 'buffer1' ]
let g:which_key_map['2'] = [ '<Plug>AirlineSelectTab2', 'buffer2' ]
let g:which_key_map['3'] = [ '<Plug>AirlineSelectTab3', 'buffer3' ]
let g:which_key_map['4'] = [ '<Plug>AirlineSelectTab4', 'buffer4' ]
let g:which_key_map['5'] = [ '<Plug>AirlineSelectTab5', 'buffer5' ]
let g:which_key_map['6'] = [ '<Plug>AirlineSelectTab6', 'buffer6' ]
let g:which_key_map['7'] = [ '<Plug>AirlineSelectTab7', 'buffer7' ]
let g:which_key_map['8'] = [ '<Plug>AirlineSelectTab8', 'buffer8' ]
let g:which_key_map['9'] = [ '<Plug>AirlineSelectTab9', 'buffer9' ]

let g:which_key_map.e = 'coc-explore'

" nnoremap   <silent>   <leader>t   :FloatermToggle<CR>
" nnoremap   <silent>   <leader>te    :FloatermNew<CR>
" tnoremap   <silent>   <leader>te    <C-\><C-n>:FloatermNew<CR>
" nnoremap   <silent>   <leader>tp    :FloatermPrev<CR>
" tnoremap   <silent>   <leader>tp   <C-\><C-n>:FloatermPrev<CR>
" nnoremap   <silent>   <leader>tn    :FloatermNext<CR>
" tnoremap   <silent>   <leader>tn    <C-\><C-n>:FloatermNext<CR>
" nnoremap   <silent>   <leader>th    :FloatermHide<CR>
" tnoremap   <silent>   <leader>th   <C-\><C-n>:FloatermHide<CR>
" nnoremap   <silent>   <leader>tf   :FloatermNew fzf<CR>
" tnoremap   <silent>   <leader>tt   <C-\><C-n>:FloatermToggle<CR>
" nnoremap   <silent>   <leader>r   :FloatermNew ranger<CR>
" t is for terminal
" let g:which_key_map.t = {
"       \ 'name' : '+terminal' ,
"       \ ';' : [':FloatermNew --wintype=normal --height=20'        , 'terminal'],
"       \ 'g' : [':FloatermNew --wintrye=floating lazygit'                     , 'git'],
"       \ 'r' : [':FloatermNew --wintype=floating ranger'                    , 'ranger'],
"       \ 't' : [':FloatermToggle'                                , 'toggle'],
"       \ 'n' : [':FloatermNext'                                , 'next'],
"       \ 'p' : [':FloatermPrev'                                , 'prev'],
"       \ }
noremap <leader>f :Files <CR>
" " " noremap <leader>fh :Files ~/<CR>
" " " noremap <leader>fd :Files /mnt/c/Users/scrutiny/Desktop/<CR>
" " " noremap <leader>ft :Files /mnt/d/temp/<CR>
noremap <leader>h :History<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>a :Ag<CR>
noremap <leader>R :Rg<CR>

" let g:which_key_map.f = {
"       \ 'name' : '+fzf' ,
"       \ 'f' : [':Files'        , 'Files'],
"       \ '~' : [':Files ~'                           , 'Home'],
"       \ '/' : [':Files /'                            , '/'],
"       \ 'h' : [':History'                                , 'History'],
"       \ ':' : [':History:'                                , 'Command'],
"       \ 'b' : [':Buffers'                                , 'Buffers'],
"       \ 'a' : [':Ag'                                , 'Ag'],
"       \ 'r' : [':Rg'                                , 'Rg'],
"       \ }

" nmap <leader>prr <Plug>(coc-rename)
nnoremap <leader>ls :CocSearch <C-R>=expand("<cword>")<CR><CR>
" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ }
" delete space
" autocmd BufWritePre * :%s/\s\+$//e
nnoremap <localleader>fs :%s/\s\+$//e<CR>:nohl<CR>
nnoremap <localleader>ff :Autoformat<CR>

nmap <localleader>t :TagbarToggle<CR>
nnoremap <leader>n :NERDTreeToggle<cr>
" let g:which_key_map.o= {
"     \ 'name' : "+others",
"       \ 's' : [':%s/\s\+$//e'                  , 'space'],
"       \ 'f' : [':Autoformat'                  , 'format'],
"       \ }

" -------------------------------------------------
" fzf
" -------------------------------------------------
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:40%'

" making float
" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let g:fzf_buffers_jump = 1

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

 " Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'down:40%', '?'),
  \   <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" -------------------------------------------------
" coc
" -------------------------------------------------
" if hidden is not set, TextEdit might fail.
set hidden

set nobackup
set nowritebackup

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap g[ <Plug>(coc-diagnostic-prev)
nmap g] <Plug>(coc-diagnostic-next)
nmap <silent> gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> gn <Plug>(coc-diagnostic-next-error)

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


" -------------------------------------------------
" floaterm
" -------------------------------------------------
" nnoremap   <silent>   <leader>te    :FloatermNew<CR>
" tnoremap   <silent>   <leader>te    <C-\><C-n>:FloatermNew<CR>
" nnoremap   <silent>   <leader>tp    :FloatermPrev<CR>
" tnoremap   <silent>   <leader>tp   <C-\><C-n>:FloatermPrev<CR>
" nnoremap   <silent>   <leader>tn    :FloatermNext<CR>
" tnoremap   <silent>   <leader>tn    <C-\><C-n>:FloatermNext<CR>
" nnoremap   <silent>   <leader>th    :FloatermHide<CR>
" tnoremap   <silent>   <leader>th   <C-\><C-n>:FloatermHide<CR>
" ctrl+\, ctrl+n 调节大小
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

autocmd TermOpen term://* startinsert
" tnoremap <C-N> <C-\><C-N>
" tnoremap <C-O> <C-\><C-N><C-O>
let g:neoterm_autoscroll = 1
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


" -------------------------------------------------
" latex
" -------------------------------------------------
" setlocal spell
" set spelllang=nl,en_gb
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
set iskeyword+=:
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


" -------------------------------------------------
" vm
" -------------------------------------------------
let g:VM_show_warnings = 0
let g:VM_maps = {}
" let g:VM_maps['Find Under']         = '<C-m>'           " replace C-n
" let g:VM_maps['Find Subword Under'] = '<C-m>'           " replace visual C-n
let g:VM_maps["I Return"] = ''

" -------------------------------------------------
" bullet
" -------------------------------------------------
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

" vim-illuminate
hi illuminatedWord cterm=underline gui=underline

" -------------------------------------------------
" airline
" -------------------------------------------------
"let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_right_alt_sep = ''
"let g:airline_solarized_bg='dark'
"airline=======================================
" set t_Co=256      "在 windows 中用 xshell 连接打开 vim 可以显示色彩
let g:airline#extensions#tabline#enabled = 1   " 是否打开 tabline
" let g:airline_powerline_fonts = 1
" set laststatus=2  "永远显示状态栏
let g:airline_theme='deus' "选择主题
" let g:airline_theme='zenburn' "选择主题
" let g:airline_theme='base16' "选择主题
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
" let g:airline#extensions#tabline#formatter = 'default'  "formater
" tabline 中 buffer 显示编号
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
" 有数字时是 tab，关闭后该 tab 的 buffer 也被关闭

let g:airline#extensions#whitespace#enabled = 0

" -------------------------------------------------
" easymotion
" -------------------------------------------------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  ' <Plug>(easymotion-bd-f)
nmap ' <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap " <Plug>(easymotion-overwin-f2)

" Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
" set nohlsearch

" -------------------------------------------------
" signify
" -------------------------------------------------
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 1
" let g:signify_sign_show_text = 1
" autocmd User SignifyAutocmds autocmd! signify CursorHold,CursorHoldI
" set signcolumn=no



" Jump though hunks
" nmap <leader>gj <plug>(signify-next-hunk)
" nmap <leader>gk <plug>(signify-prev-hunk)
" nmap <leader>gJ 9999<leader>gJ
" nmap <leader>gK 9999<leader>gk


" If you like colors instead
" highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
" highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

" -------------------------------------------------
" goyo
" -------------------------------------------------
nnoremap <localleader>g :Goyo<CR>

" -------------------------------------------------
" start
" -------------------------------------------------
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

let g:startify_files_number = 20
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_enable_special = 0
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
" || let g:startify_change_to_vcs_root = 1 ||
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1


nnoremap <leader>sl :SLoad<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sd :SDelete<CR>
nnoremap <leader>sc :SClose<CR>

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Show startify when there is no opened buffers, not goog with session
" autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

" -------------------------------------------------
" nerdtree
" -------------------------------------------------
let g:NERDTreeShowLineNumbers=1  " 是否显示行号
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Test Function
