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

nnoremap <silent> <C-K> :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

