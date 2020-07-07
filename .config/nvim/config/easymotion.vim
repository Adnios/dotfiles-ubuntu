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
