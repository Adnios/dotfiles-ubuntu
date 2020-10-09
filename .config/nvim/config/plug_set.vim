" ################################
" indentline
" ################################
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['defx', 'denite','startify','tagbar','vista_kind','vista','coc-explorer','dashboard']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel =1

" ################################
" snippet
" ################################
" let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsJumpForwardTrigger = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" ################################
" rooter
" ################################
let g:rooter_change_directory_for_non_project_files = 'current'

" ################################
" i3
" ################################
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" ################################
" Pangu
" ################################
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()


" ################################
" oceanic_material
" ################################
" let g:oceanic_material_transparent_background = 1
let g:oceanic_material_allow_bold = 1
colorscheme oceanic_material

" ################################
" clap
" ################################
" reference: thinkvim
let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '


" ################################
" spaceline
" ################################
let g:spaceline_seperate_style= 'arrow'
let g:spaceline_custom_diff_icon= ['+','-','*']


" ################################
" buffet
" ################################
let g:buffet_always_show_tabline = 1
" let g:buffet_powerline_separators = 1
let g:buffet_show_index = 1
let g:buffet_max_plug = 10
let g:buffet_use_devicons = 0
let g:buffet_hidden_buffers = ["terminal", "quickfix"]
function! g:BuffetSetCustomColors()
    hi! BuffetCurrentBuffer cterm=NONE ctermbg=106 ctermfg=8 guibg=#b8bb26 guifg=#000000
    hi! BuffetTrunc cterm=bold ctermbg=10 ctermfg=8 guibg=##999999 guifg=#999999
    hi! BuffetTab cterm=NONE ctermbg=203 ctermfg=8 guibg=#555555 guifg=#999999
    hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=239 guibg=#504945 guifg=#000000
    hi! BuffetBuffer cterm=NONE  ctermfg=10 guibg=buffermidcolor guifg=#999999
endfunction


" ################################
" rnvimr
" ################################
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_bw = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 0
" let g:rnvimr_hide_gitignore = 1
let g:rnvimr_border_attr = {'fg': 3}
let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'
highlight link RnvimrNormal CursorLine


" ################################
" tex
" ################################
set iskeyword+=:
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" ################################
" VM
" ################################
let g:VM_show_warnings = 0
let g:VM_maps = {}
" let g:VM_maps['Find Under']         = '<C-m>'           " replace C-n
" let g:VM_maps['Find Subword Under'] = '<C-m>'           " replace visual C-n
let g:VM_maps["I Return"] = ''



" ################################
" illuminate
" ################################
" hi illuminatedWord cterm=underline gui=underline
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi link illuminatedWord CursorLine
augroup END

" ################################
" bullet
" ################################
" let g:bullets_mapping_leader = '<C-s>'
let g:bullets_set_mappings = 1 " default = 1
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


" ################################
" easymotion
" ################################
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map  , <Plug>(easymotion-bd-f)
nmap , <Plug>(easymotion-overwin-f)

" ################################
" Vista
" ################################
let g:vista#renderer#enable_icon = 1
let g:vista_disable_statusline = 1
let g:vista_default_executive = 'ctags'
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_vimwiki_executive = 'markdown'
let g:vista_executive_for = {
  \ 'markdown': 'toc',
  \ 'python': 'coc',
  \ 'vim': 'coc',
  \ }
" ################################
" markdown
" ################################
let g:mdip_imgdir = 'pic'
let g:mdip_imgname = 'image'
autocmd FileType markdown nnoremap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_emphasis_multiline = 0
set conceallevel=2
let g:vim_markdown_conceal=0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_frontmatter=1
let g:vim_markdown_toc_autofit = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
let g:mkdp_auto_close = 0
" ################################
" floaterm
" ################################
let g:floaterm_wintitle=1

let g:floaterm_width = 1.0
let g:floaterm_height = 0.5
" don't use floating
let g:floaterm_wintype = 'normal'
let g:floaterm_position = 'bottom'
let g:floaterm_gitcommit = 'split'
let g:floaterm_autoclose = v:true
let g:floaterm_autohide = v:true
" let g:floaterm_rootmarkers   = ['.git', '.gitignore', '*.pro', 'Cargo.toml']
let g:floaterm_borderchars = '_'
" ################################
" fzf
" ################################
let g:fzf_buffers_jump = 1

" ################################
" dashboard
" ################################
let g:dashboard_default_header = 'garfield'

let g:dashboard_custom_section = {
   \ 'last_session'        :[' Recently last session                 SPC d l'],
   \ 'find_history'        :[' Recently opened files                 SPC c h'],
   \ 'find_file'           :[' Find  File                            SPC c f'],
   \ 'find_word'           :[' Find  word                            SPC c a'],
   \}

function! FIND_FILE() abort
  Clap files ++finder=rg --ignore --hidden --files
endfunction

function! FIND_HISTORY() abort
  Clap history
endfunction

function! FIND_WORD() abort
  Clap grep
  " Clap grep2
endfunction

function! LAST_SESSION()
  SessionLoad
endfunction

" ################################
" rainbow
" ################################
let g:rainbow_active = 1

