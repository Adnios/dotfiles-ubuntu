call plug#begin('~/.config/nvim/plugged')
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    "Keep and restore fcitx state for each buffer
    Plug 'vim-scripts/fcitx.vim'
    " 文件树 coc-explore 代替，coc-explore 太卡
    " Plug 'scrooloose/nerdtree'          " File tree manager
    " Plug 'jistr/vim-nerdtree-tabs'      " enhance nerdtree's tabs
    Plug 'ryanoasis/vim-devicons'       " add beautiful icons besides files
    " Plug 'Xuyuanp/nerdtree-git-plugin'  " display git status within Nerdtree
    " Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " enhance devicons
    " 括号匹配
    Plug 'jiangmiao/auto-pairs'
    " 需要手动在 coc.nvim 目录下 yarn install
    " nodejs apt 安装 npm 等，sudo npm cache clean -f|sudo npm install -g
    " n|sudo n stable 更新 npm, 解决：checkhealth 的 npm 报错
    " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " nodejs apt 安装 npm 等，sudo npm cache clean -f|sudo npm install -g
    " 状态栏
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'dense-analysis/ale'
    Plug 'yggdroot/indentline'
        " let g:indentLine_setColors = 0
        let g:indentLine_setConceal = 0
        let g:indentLine_char_list = ['|', '¦', '┆', '┊']

    Plug 'easymotion/vim-easymotion'
    " Plug 'tpope/vim-surround'
    Plug '~/.fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'
    " colorscheme
    " Plug 'kristijanhusak/vim-hybrid-material'
    " Plug 'morhetz/gruvbox'
    " Plug 'sainnhe/gruvbox-material'
    Plug 'hardcoreplayers/oceanic-material'
    " Plug 'srcery-colors/srcery-vim'
    " Plug 'cocopon/iceberg.vim'
    " Plug 'junegunn/seoul256.vim'
    " Plug 'ajmwagar/vim-deus'
    " Plug 'joshdick/onedark.vim'
    " Plug 'drewtempelmeyer/palenight.vim'
    " syntax
    Plug 'sheerun/vim-polyglot' "有点卡，coc 的原因
    Plug 'mboughaba/i3config.vim' "i3
    " markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dkarter/bullets.vim'
    Plug 'mzlogin/vim-markdown-toc'
    Plug 'ferrine/md-img-paste.vim'
    " latex
    Plug 'lervag/vimtex'
    " Plug 'dhruvasagar/vim-table-mode'
    " Plug 'ron89/thesaurus_query.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'majutsushi/tagbar'
    Plug 'jszakmeister/markdown2ctags'
    Plug 'voldikss/vim-floaterm'
    " code
    Plug 'Chiel92/vim-autoformat'
    Plug 'airblade/vim-rooter'
    " ranger
    " Plug 'rbgrouleff/bclose.vim' "neovim 加上，否则 ranger 存在 buffer 内，对 floaterm 也有效
    " Plug 'francoiscabrol/ranger.vim'
    " vim-which-key
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    " highlight
    Plug 'RRethy/vim-illuminate'
    " tabs
    " Plug 'mg979/vim-xtabline' "影响 buffer 使用
    Plug 'rhysd/clever-f.vim'
    " Plug 'bling/vim-bufferline' "在 command 显示 buffer
    " Plug 'justinmk/vim-sneak' "; cannot work
    " Plug 'unblevable/quick-scope'
    " git
    " Plug 'mhinz/vim-signify'
    " Plug 'airblade/vim-gitgutter'
    " Plug 'tpope/vim-fugitive'
    " Plug 'tpope/vim-rhubarb'
    " Plug 'junegunn/gv.vim'
    " Plug 'junegunn/goyo.vim'
    " 中文排版
    Plug 'hotoo/pangu.vim'
    " clipboard
    Plug 'junegunn/vim-peekaboo'
    " Plug 'junegunn/vim-slash'
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'zchee/deoplete-jedi'

    Plug 'voldikss/vim-browser-search'
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-surround'
    " Plug 'tpope/vim-repeat'
    Plug 'lambdalisue/suda.vim'
    " Plug 'luochen1990/rainbow'
    " let g:rainbow_active = 1
    Plug 'hardcoreplayers/spaceline.vim'
        let g:spaceline_custom_diff_icon= ['+','-','*']
    Plug 'bagrat/vim-buffet'
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
call plug#end()

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:tagbar_width = 20

let g:rooter_change_directory_for_non_project_files = 'current'

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end


autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
