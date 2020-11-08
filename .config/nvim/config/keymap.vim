let g:mapleader = "\<Space>"
let g:maplocalleader = ";" "vimtex 被修改
map <F12> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>q :q!<CR>
inoremap <C-v> <ESC>:set paste<CR>a<C-R>+<ESC>:set nopaste<CR>a
nnoremap <localleader>c :bd!<CR>
vnoremap > >gv
vnoremap < <gv

" insert keymap like emacs
inoremap <C-w> <C-[>diwa
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-k>  <ESC>d$a
inoremap <C-u> <C-G>u<C-U>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <ESC>^i
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"
"insert a newline
inoremap <C-O> <Esc>o

  " command line alias
cnoremap <C-p> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

nnoremap <localleader><CR> :nohl<CR>
nmap <localleader><localleader> :call Run()<CR>
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
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

" Disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>


nnoremap <silent><C-d> <C-d>zz
nnoremap <silent><C-u> <C-u>zz
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
nnoremap <BS> :tabe<CR>:-tabmove<CR>:term sh -c 'alacritty'<CR><C-\><C-N>:q<CR>

nnoremap Y y$

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
