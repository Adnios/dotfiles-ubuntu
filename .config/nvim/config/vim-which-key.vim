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
nnoremap <silent> <Leader>cl :<C-u>Clap filer<CR>
" nnoremap <silent> <Leader>ca :<C-u>Clap grep2<CR>

nnoremap <localleader>m   :Clap command<CR>
noremap <localleader>f :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
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
" nmap <leader>b1 <Plug>BuffetSwitch(1)
" nmap <leader>b2 <Plug>BuffetSwitch(2)
" nmap <leader>b3 <Plug>BuffetSwitch(3)
" nmap <leader>b4 <Plug>BuffetSwitch(4)
" nmap <leader>b5 <Plug>BuffetSwitch(5)
" nmap <leader>b6 <Plug>BuffetSwitch(6)
" nmap <leader>b7 <Plug>BuffetSwitch(7)
" nmap <leader>b8 <Plug>BuffetSwitch(8)
" nmap <leader>b9 <Plug>BuffetSwitch(9)
" nmap <leader>b0 <Plug>BuffetSwitch(10)
" nnoremap <silent> <Leader>bc :Bonly<CR>
" let g:which_key_map.b = { 'name' : '+Buffer' }
" let g:which_key_map.b.1 = 'buffer_1'
" let g:which_key_map.b.2 = 'buffer_2'
" let g:which_key_map.b.3 = 'buffer_3'
" let g:which_key_map.b.4 = 'buffer_4'
" let g:which_key_map.b.5 = 'buffer_5'
" let g:which_key_map.b.6 = 'buffer_6'
" let g:which_key_map.b.7 = 'buffer_7'
" let g:which_key_map.b.8 = 'buffer_8'
" let g:which_key_map.b.9 = 'buffer_9'
" let g:which_key_map.b.0 = 'buffer_0'
" let g:which_key_map.b.c = 'Bonly'



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
nnoremap   <silent>   <localleader>tt   :FloatermToggle<CR>
tnoremap   <silent>   <localleader>tt   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <localleader>te   :FloatermNew<CR>
tnoremap   <silent>   <localleader>te   <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <localleader>tn   :FloatermNext<CR>
tnoremap   <silent>   <localleader>tn   <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <localleader>tp   :FloatermPrev<CR>
tnoremap   <silent>   <localleader>tp   <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <localleader>g   :FloatermNew lazygit<CR>
" ################################
" other
" ################################
nnoremap <leader>T :GenTocGFM<CR>
nnoremap <leader>W :w suda://%<CR>
nnoremap <leader>s :set spell! spelllang=en_us,cjk<CR>


" ################################
" Defx
" ################################
noremap <localleader>e :Defx<CR>

" ################################
" barbar.nvim
" ################################

" Magic buffer-picking mode
nnoremap <silent> <Space>bp :BufferPick<CR>
nnoremap <silent> , :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
" Move to previous/next
nnoremap <silent>    [b :BufferPrevious<CR>
nnoremap <silent>    ]b :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <Space>bP :BufferMovePrevious<CR>
nnoremap <silent>    <Space>bN :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <Space>b1 :BufferGoto 1<CR>
nnoremap <silent>    <Space>b2 :BufferGoto 2<CR>
nnoremap <silent>    <Space>b3 :BufferGoto 3<CR>
nnoremap <silent>    <Space>b4 :BufferGoto 4<CR>
nnoremap <silent>    <Space>b5 :BufferGoto 5<CR>
nnoremap <silent>    <Space>b6 :BufferGoto 6<CR>
nnoremap <silent>    <Space>b7 :BufferGoto 7<CR>
nnoremap <silent>    <Space>b8 :BufferGoto 8<CR>
nnoremap <silent>    <Space>b9 :BufferLast<CR>
" Close buffer
nnoremap <silent>    <Space>bc :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
nnoremap <silent>    <Space>bC :BufferCloseAllButCurrent<CR>
nnoremap <silent>    <Space>bR :BufferCloseBuffersRight<CR>
" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used


nmap <localleader><'localleader'> :QuickRun<cr>

