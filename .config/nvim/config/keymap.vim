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
nnoremap <leader>T :GenTocGFM<CR>
" nnoremap j gj
" nnoremap k gk
" nnoremap gj j
" nnoremap gk k

nnoremap <localleader>ss :set spell spelllang=en_us,cjk<CR>
