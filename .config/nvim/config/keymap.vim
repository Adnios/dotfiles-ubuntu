" -------------------------------------------------
" keymap
" -------------------------------------------------
let g:mapleader = ";"
let g:maplocalleader = "\<Space>" "vimtex 被修改
map <F12> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>q :q!<CR>
"复制粘贴的斗争
" vnoremap <C-c> "+y
" vnoremap <C-x> "+c
" nnoremap <leader>v :set paste<CR>a<C-R>+<ESC>:set nopaste<CR>
inoremap <C-v> <ESC>:set paste<CR>a<C-R>+<ESC>:set nopaste<CR>a
" noremap <C-s> :w<CR>
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
" nnoremap <silent> [B :bfirst<CR>
" nnoremap <silent> ]B :blast<CR>
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nnoremap <silent> <Leader>bc :Bonly<CR>

" Disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>


nnoremap <silent><C-d> :set scrolloff=0<CR><C-d>zz:set scrolloff=7<CR>
nnoremap <silent><C-u> :set scrolloff=0<CR><C-u>zz:set scrolloff=7<CR>
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-h> ^
nnoremap <C-l> $

vnoremap <C-j> 5j
vnoremap <C-k> 5k
vnoremap <C-h> ^
vnoremap <C-l> $

nnoremap <leader>w <C-w>w
tnoremap <leader>w <C-\><C-N><C-w>w
" nnoremap <BS> :tabe<CR>:-tabmove<CR>:term sh -c 'alacritty'<CR><C-\><C-N>:q<CR>

nnoremap Y y$

" :W sudo saves the file
" (useful for handling the permission-denied error)
" don't work in neovim
" command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
nnoremap <leader>T :GenTocGFM<CR>
" nnoremap j gj
" nnoremap k gk
" nnoremap gj j
" nnoremap gk k

nnoremap <leader>W :w suda://%<CR>
nnoremap <localleader>s :set spell! spelllang=en_us,cjk<CR>

nmap <silent> <Leader>s <Plug>SearchNormal
vmap <silent> <Leader>s <Plug>SearchVisual

nnoremap <leader>S :Obsession!<CR>

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

nmap <localleader>1 <Plug>BuffetSwitch(1)
nmap <localleader>2 <Plug>BuffetSwitch(2)
nmap <localleader>3 <Plug>BuffetSwitch(3)
nmap <localleader>4 <Plug>BuffetSwitch(4)
nmap <localleader>5 <Plug>BuffetSwitch(5)
nmap <localleader>6 <Plug>BuffetSwitch(6)
nmap <localleader>7 <Plug>BuffetSwitch(7)
nmap <localleader>8 <Plug>BuffetSwitch(8)
nmap <localleader>9 <Plug>BuffetSwitch(9)
nmap <localleader>0 <Plug>BuffetSwitch(10)
