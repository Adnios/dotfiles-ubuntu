" ################################
" indentline
" ################################
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['defx',  'denite','startify','tagbar','vista_kind','vista','coc-explorer','dashboard', 'dashpreview']
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

" let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh']

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
" autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()


" ################################
" oceanic_material
" ################################
let g:oceanic_material_transparent_background = 1
let g:oceanic_material_allow_bold = 1
colorscheme oceanic_material

" ################################
" clap
" ################################
" reference: thinkvim
let g:clap_theme = 'material_design_dark'
let g:clap_theme = { 'search_text': {'guifg': 'red', 'ctermfg': 'red'} }
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
" let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
" some wired bugs
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '
" A funtion to config highlight of ClapSymbol
" when the background color is opactiy
function! s:ClapSymbolHL() abort
    let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
    if s:current_bgcolor == ''
        hi ClapSymbol guibg=NONE ctermbg=NONE
    endif
endfunction
autocmd User ClapOnEnter call s:ClapSymbolHL()

let g:clap_background_shadow_blend = 50
let g:clap_disable_bottom_top = 0
let g:clap_disable_matches_indicator = v:false
let g:clap_disable_optional_async = v:false
let g:clap_disable_run_rooter = v:false
let g:clap_enable_background_shadow = v:false
let g:clap_enable_debug = v:false
let g:clap_forerunner_status_sign = {'done': '•', 'running': '!', 'using_cache': '*'}
let g:clap_insert_mode_only = v:false
let g:clap_layout = {'row': '20%', 'relative': 'editor'}
let g:clap_multi_selection_warning_silent = 0
let g:clap_no_matches_msg = 'NO MATCHES FOUND'
let g:clap_open_action = {'ctrl-v': 'vsplit', 'ctrl-x': 'split', 'ctrl-t': 'tab split'}
let g:clap_popup_border = 'rounded'
let g:clap_preview_size = 5
let g:clap_providers_relaunch_code = '@@'
let g:clap_search_box_border_symbols = {'nil': ['', ''], 'curve': ['', ''], 'arrow': ['', '']}


" ################################
" spaceline
" ################################
" let g:spaceline_seperate_style= 'slant-fade'
" let g:spaceline_custom_diff_icon= ['+','-','*']

" ################################
" galaxyline
" ################################
luafile ~/.config/nvim/theme/eviline.lua
" luafile ~/.config/nvim/plugged/galaxyline.nvim/example/spaceline.lua
luafile ~/.config/nvim/plugged/galaxyline.nvim/example/eviline.lua

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


" ###############################
" nvim-hlslens
" ###############################
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>


" ################################
" tex
" ################################
set iskeyword+=:
" let g:tex_flavor='latex'
let g:tex_flavor='xelatex'
" let g:tex_flavor='XeLaTex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" 这样配置后，我们就可以通过 vimtex 默认的 \lv 快捷键（在按住 \ 的时候，连续点击 l 和 v）来正向同步当前 Neovim 光标位置到 PDF 预览位置，也可以通过「Ctrl + 点击 PDF 预览相应位置」来反向同步 Neovim 光标位置了。
let g:vimtex_compiler_progname = 'nvr'

" ################################
" VM
" ################################
" let g:VM_show_warnings = 0
" let g:VM_maps = {}
" let g:VM_maps['Find Under']         = '<C-m>'           " replace C-n
" let g:VM_maps['Find Subword Under'] = '<C-m>'           " replace visual C-n
" let g:VM_maps["I Return"] = ''



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
let g:bullets_set_mappings = 0 " default = 1
let g:bullets_mapping_leader = '<M-b>'
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
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout
map  , <Plug>(easymotion-bd-f)
nmap , <Plug>(easymotion-overwin-f)

" ################################
" Vista
" ################################
let g:vista#renderer#enable_icon = 1
let g:vista_disable_statusline = 1
let g:vista_default_executive = 'coc'
" let g:vista_default_executive = 'ctags'
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_vimwiki_executive = 'markdown'
let g:vista_executive_for = {
  \ 'markdown': 'toc',
  \ 'python': 'coc',
  \ 'vim': 'coc',
  \ 'cpp': 'coc',
  \ 'cu': 'coc',
  \ 'cc': 'coc',
  \ }
let g:vista#renderer#icons = {
            \   "function": "\uf794",
            \   "variable": "\u0ec2",
            \  }
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
let g:mkdp_echo_preview_url = 1
let g:mkdp_browser = '/usr/bin/google-chrome'

" ################################
" floaterm
" ################################
let g:floaterm_title = 'floaterm ($1|$2)'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.6
let g:floaterm_position = 'center'
let g:floaterm_gitcommit = 'split'
let g:floaterm_autoclose = 2
let g:floaterm_autohide = v:true
" let g:floaterm_autoinsert = v:false
" let g:floaterm_rootmarkers   = ['.git', '.gitignore', '*.pro', 'Cargo.toml']
" hi FloatermNC guibg=skyblue
hi FloatermBorder guifg=orange
command! PythonREPL  :FloatermNew --wintype=normal --width=0.5 --position=right python

" let g:floaterm_wintitle=1
" let g:floaterm_width = 1.0
" let g:floaterm_height = 0.5
" don't use floating
" let g:floaterm_wintype = 'normal'
" let g:floaterm_position = 'bottom'
" let g:floaterm_gitcommit = 'split'
" let g:floaterm_autoclose = v:true
" let g:floaterm_autohide = v:true
" let g:floaterm_rootmarkers   = ['.git', '.gitignore', '*.pro', 'Cargo.toml']
" let g:floaterm_borderchars = '_'
" ################################
" fzf
" ################################
" let g:fzf_buffers_jump = 1

" ################################
" dashboard
" ################################
" let g:dashboard_default_header = 'garfield'
let g:dashboard_preview_command = 'cat'
let g:dashboard_preview_pipeline = 'lolcat'
" let g:dashboard_preview_file = getenv('HOME') . '/.config/nvim/static/tiger.txt'
let g:dashboard_preview_file = getenv('HOME') . '/.config/nvim/static/pokemon.txt'
" let g:dashboard_preview_file = getenv('HOME') . '/.config/nvim/static/scrutiny.txt'
" let g:dashboard_preview_file = getenv('HOME') . '/.config/nvim/static/cat.txt'
let g:dashboard_preview_file_height = 14
let g:dashboard_preview_file_width = 80
let g:dashboard_default_executive ='telescope'

" let g:dashboard_custom_section = {
"    \ 'last_session'        :[' Recently last session                 SPC d l'],
"    \ 'find_history'        :[' Recently opened files                 SPC c h'],
"    \ 'find_file'           :[' Find  File                            SPC c f'],
"    \ 'find_word'           :[' Find  word                            SPC c a'],
"    \}
let g:dashboard_custom_section = {
      \ 'last_session'        :{
          \ 'description': ['  Recently laset session                  SPC d l'],
          \ 'command': 'SessionLoad'},
      \ 'find_history'        :{
          \ 'description': ['  Recently opened files                   SPC c h'],
          \ 'command': 'DashboardFindHistory'},
      \ 'find_file'           :{
          \ 'description': ['  Find  File                              SPC c f'],
          \ 'command': 'DashboardFindFile'},
      \ 'new_file'            :{
          \ 'description': ['  New   File                              SPC d n'],
          \ 'command': 'DashboardNewFile'},
      \ 'find_word'           :{
          \ 'description': ['  Find  word                              SPC c a'],
          \ 'command': 'DashboardFindWord'},
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
let g:rbpt_max = 16

" ################################
" clever_f
" ################################
let g:clever_f_ignore_case = 1

" ################################
" Defx
" ################################
call defx#custom#option('_', {
  \ 'resume': 1,
  \ 'winwidth': 30,
  \ 'split': 'vertical',
  \ 'direction': 'topleft',
  \ 'show_ignored_files': 0,
  \ 'columns': 'mark:indent:git:icons:filename',
  \ 'root_marker': '[in]: ',
  \ })

call defx#custom#column('git', {
  \   'indicators': {
  \     'Modified'  : '•',
  \     'Staged'    : '✚',
  \     'Untracked' : 'ᵁ',
  \     'Renamed'   : '≫',
  \     'Unmerged'  : '≠',
  \     'Ignored'   : 'ⁱ',
  \     'Deleted'   : '✖',
  \     'Unknown'   : '⁇'
  \   }
  \ })

" defx-icons plugin
let g:defx_icons_column_length = 1
let g:defx_icons_mark_icon = ''
let g:defx_icons_parent_icon = ""

call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })

" Events
" ---

augroup user_plugin_defx
	autocmd!

	" Define defx window mappings
	autocmd FileType defx call <SID>defx_mappings()

	" Delete defx if it's the only buffer left in the window
	autocmd WinEnter * if &filetype == 'defx' && winnr('$') == 1 | bdel | endif

	" Move focus to the next window if current buffer is defx
	autocmd TabLeave * if &filetype == 'defx' | wincmd w | endif

augroup END

" Internal functions
" ---
function! s:jump_dirty(dir) abort
	" Jump to the next position with defx-git dirty symbols
	let l:icons = get(g:, 'defx_git_indicators', {})
	let l:icons_pattern = join(values(l:icons), '\|')

	if ! empty(l:icons_pattern)
		let l:direction = a:dir > 0 ? 'w' : 'bw'
		return search(printf('\(%s\)', l:icons_pattern), l:direction)
	endif
endfunction

function! s:defx_toggle_tree() abort
	" Open current file, or toggle directory expand/collapse
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction

function! s:defx_mappings() abort
	" Defx window keyboard mappings
	setlocal signcolumn=no expandtab

	nnoremap <silent><buffer><expr> <CR>  defx#do_action('drop')
	nnoremap <silent><buffer><expr> l     <sid>defx_toggle_tree()
	nnoremap <silent><buffer><expr> h     defx#async_action('cd', ['..'])
	nnoremap <silent><buffer><expr> st    defx#do_action('multi', [['drop', 'tabnew'], 'quit'])
	nnoremap <silent><buffer><expr> s     defx#do_action('open', 'botright vsplit')
	nnoremap <silent><buffer><expr> i     defx#do_action('open', 'botright split')
	nnoremap <silent><buffer><expr> P     defx#do_action('open', 'pedit')
	nnoremap <silent><buffer><expr> K     defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N     defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> dd    defx#do_action('remove_trash')
	nnoremap <silent><buffer><expr> r     defx#do_action('rename')
	nnoremap <silent><buffer><expr> x     defx#do_action('execute_system')
	nnoremap <silent><buffer><expr> zh    defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> ~     defx#async_action('cd')
	nnoremap <silent><buffer><expr> q     defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Tab> winnr('$') != 1 ?
		\ ':<C-u>wincmd w<CR>' :
		\ ':<C-u>Defx -buffer-name=temp -split=vertical<CR>'
	" Defx's buffer management
	nnoremap <silent><buffer><expr> q      defx#do_action('quit')
	nnoremap <silent><buffer><expr> se     defx#do_action('save_session')
	nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
	nnoremap <silent><buffer><expr> <C-g>  defx#do_action('print')

	" File/dir management
	nnoremap <silent><buffer><expr><nowait> c  defx#do_action('copy')
	nnoremap <silent><buffer><expr><nowait> m  defx#do_action('move')
	nnoremap <silent><buffer><expr><nowait> p  defx#do_action('paste')
	nnoremap <silent><buffer><expr><nowait> r  defx#do_action('rename')
	nnoremap <silent><buffer><expr> dd defx#do_action('remove_trash')
	nnoremap <silent><buffer><expr> K  defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N  defx#do_action('new_multiple_files')

	" Jump
	nnoremap <silent><buffer>  [g :<C-u>call <SID>jump_dirty(-1)<CR>
	nnoremap <silent><buffer>  ]g :<C-u>call <SID>jump_dirty(1)<CR>

	" Change directory
	nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
	nnoremap <silent><buffer><expr><nowait> &  defx#do_action('cd', getcwd())
	nnoremap <silent><buffer><expr> <BS>  defx#async_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~     defx#async_action('cd')
	nnoremap <silent><buffer><expr> u   defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> 2u  defx#do_action('cd', ['../..'])
	nnoremap <silent><buffer><expr> 3u  defx#do_action('cd', ['../../..'])
	nnoremap <silent><buffer><expr> 4u  defx#do_action('cd', ['../../../..'])

	" Selection
	nnoremap <silent><buffer><expr> *  defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr><nowait> <Space>
		\ defx#do_action('toggle_select') . 'j'

	nnoremap <silent><buffer><expr> S  defx#do_action('toggle_sort', 'Time')
	nnoremap <silent><buffer><expr> C
		\ defx#do_action('toggle_columns', 'indent:mark:filename:type:size:time')

endfunction
