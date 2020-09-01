set timeoutlen=500 "设置为 100 会导致 floaterm,gcc 问题
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ';'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKey ';'<CR>

" let g:which_key_use_floating_win = 0
" Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"             \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_map = {}

autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

nnoremap <leader>e :CocCommand explorer<CR>
let g:which_key_map.e = 'coc-explore'
nnoremap <leader>ls :CocSearch <C-R>=expand("<cword>")<CR><CR>

" l is for language server protocol
let g:which_key_map.l = {
            \ 'name' : '+lsp' ,
            \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
            \ }

let g:which_key_map.p = 'picture'

" #################################
" clap, dashboard
" #################################
nnoremap <leader>cy :Clap yanks<CR>
nnoremap <Leader>ce   :Clap coc_extensions<CR>
nnoremap <Leader>cc   :Clap coc_commands<CR>
nnoremap <Leader>cm   :Clap command<CR>

nmap <Leader>ds :<C-u>SessionSave<CR>
nmap <Leader>dl :<C-u>SessionLoad<CR>
nmap <Leader>dn :<C-u>DashboardNewFile<CR>
nnoremap <silent> <Leader>ch :<C-u>Clap history<CR>
nnoremap <silent> <Leader>cf :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nnoremap <silent> <Leader>ca :<C-u>Clap grep<CR>
" nnoremap <silent> <Leader>ca :<C-u>Clap grep2<CR>

nnoremap <localleader>m   :Clap command<CR>
noremap <localleader>f :Clap files <CR>
noremap <localleader>h :Clap history<CR>
noremap <localleader>b :Clap buffers<CR>

let g:which_key_map.c = { 'name' : '+Clap' }
let g:which_key_map.c.y = 'yanks'
let g:which_key_map.c.e = 'extension'
let g:which_key_map.c.c = 'coc_command'
let g:which_key_map.c.m = 'command'
let g:which_key_map.c.h = 'history'
let g:which_key_map.c.f = 'file'
let g:which_key_map.c.a = 'word'

let g:which_key_map.d = { 'name' : '+Dashboard' }
let g:which_key_map.d.n = 'NewFile'
" ################################
" buffer
" ################################
nmap <leader>b1 <Plug>BuffetSwitch(1)
nmap <leader>b2 <Plug>BuffetSwitch(2)
nmap <leader>b3 <Plug>BuffetSwitch(3)
nmap <leader>b4 <Plug>BuffetSwitch(4)
nmap <leader>b5 <Plug>BuffetSwitch(5)
nmap <leader>b6 <Plug>BuffetSwitch(6)
nmap <leader>b7 <Plug>BuffetSwitch(7)
nmap <leader>b8 <Plug>BuffetSwitch(8)
nmap <leader>b9 <Plug>BuffetSwitch(9)
nmap <leader>b0 <Plug>BuffetSwitch(10)
nnoremap <silent> <Leader>bc :Bonly<CR>
let g:which_key_map.b = { 'name' : '+Buffer' }
let g:which_key_map.b.1 = 'buffer_1'
let g:which_key_map.b.2 = 'buffer_2'
let g:which_key_map.b.3 = 'buffer_3'
let g:which_key_map.b.4 = 'buffer_4'
let g:which_key_map.b.5 = 'buffer_5'
let g:which_key_map.b.6 = 'buffer_6'
let g:which_key_map.b.7 = 'buffer_7'
let g:which_key_map.b.8 = 'buffer_8'
let g:which_key_map.b.9 = 'buffer_9'
let g:which_key_map.b.0 = 'buffer_0'
let g:which_key_map.b.c = 'Bonly'



" ################################
" Search
" ################################
nmap <silent> <localleader>s <Plug>SearchNormal
vmap <silent> <localleader>s <Plug>SearchVisual


" nmap <Plug>(table-mode-tableize) <Nop>
" nmap <Plug>(table-mode-tableize-delimiter) <Nop>

" ################################
" rnvimr
" ################################
tnoremap <silent> <Up> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <localleader>r :RnvimrToggle<CR>

" ################################
" vista
" ################################
nnoremap <localleader>v :Vista!!<CR>


" ################################
" table-mode
" ################################
" 只有在table-mode启用后，其他快捷键才显示
let g:which_key_map.t = { 'name' : '+table-mode' }

" ################################
" fzf
" ################################
let g:which_key_map.f = { 'name' : '+fzf' }
noremap <leader>ff :Files <CR>
noremap <leader>fh :History<CR>
noremap <leader>fb :Buffers<CR>
noremap <leader>fr :Rg<CR>
noremap <leader>fm :Marks<CR>

" ################################
" floaterm
" ################################
nnoremap   <silent>   <localleader>t   :FloatermToggle<CR>
tnoremap   <silent>   <localleader>t   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <localleader>g   :FloatermNew lazygit<CR>
" ################################
" other
" ################################
nnoremap <leader>T :GenTocGFM<CR>
nnoremap <leader>W :w suda://%<CR>
nnoremap <leader>s :set spell! spelllang=en_us,cjk<CR>
