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
" let g:which_key_map.s = {
"       \ 'name' : '+session' ,
"       \ }
" let g:which_key_map['1'] = [ '<Plug>AirlineSelectTab1', 'buffer1' ]
" let g:which_key_map['2'] = [ '<Plug>AirlineSelectTab2', 'buffer2' ]
" let g:which_key_map['3'] = [ '<Plug>AirlineSelectTab3', 'buffer3' ]
" let g:which_key_map['4'] = [ '<Plug>AirlineSelectTab4', 'buffer4' ]
" let g:which_key_map['5'] = [ '<Plug>AirlineSelectTab5', 'buffer5' ]
" let g:which_key_map['6'] = [ '<Plug>AirlineSelectTab6', 'buffer6' ]
" let g:which_key_map['7'] = [ '<Plug>AirlineSelectTab7', 'buffer7' ]
" let g:which_key_map['8'] = [ '<Plug>AirlineSelectTab8', 'buffer8' ]
" let g:which_key_map['9'] = [ '<Plug>AirlineSelectTab9', 'buffer9' ]

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

nmap <localleader>T :TagbarToggle<CR>
" let g:which_key_map.o= {
"     \ 'name' : "+others",
"       \ 's' : [':%s/\s\+$//e'                  , 'space'],
"       \ 'f' : [':Autoformat'                  , 'format'],
"       \ }

let g:which_key_map.p = 'picture'
