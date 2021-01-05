call plug#begin('~/.config/nvim/plugged')
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'lilydjwg/fcitx.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'yggdroot/indentline'
		" Plug 'glepnir/indent-guides.nvim'
    Plug 'easymotion/vim-easymotion'
    Plug '~/.fzf', {'on':['Files', 'History', 'Colors', 'Rg', 'Rg', 'Marks', 'Ag', 'Buffers']}
    Plug 'junegunn/fzf.vim', {'on':['Files', 'History', 'Colors', 'Rg', 'RG', 'Marks', 'Ag', 'Buffers']}
    Plug 'tpope/vim-commentary'
    " 美化
    Plug 'glepnir/dashboard-nvim'
    " Plug 'glepnir/spaceline.vim'
    Plug 'glepnir/galaxyline.nvim'
    " Plug 'glepnir/oceanic-material'
		" Plug 'morhetz/gruvbox'
    Plug 'romgrk/doom-one.vim'
		" Plug 'glepnir/zephyr-nvim'
    " Plug 'mhartington/oceanic-next'
    Plug 'luochen1990/rainbow'
    " Plug 'sheerun/vim-polyglot'
    Plug 'mboughaba/i3config.vim', { 'for': 'i3config' }
    " Plug 'ryanoasis/vim-devicons'

    Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
    " Plug 'akinsho/nvim-bufferline.lua'

    " markdown
    Plug 'godlygeek/tabular', { 'for': 'markdown' }
    Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
    Plug 'iamcco/mathjax-support-for-mkdp', { 'for': 'markdown' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Plug 'dkarter/bullets.vim', {'for': 'markdown'} " 和coc <cr>, clap <cr>冲突 bug
    " Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }
    " Plug 'ferrine/md-img-paste.vim', { 'for': 'markdown' }
    " Plug 'dhruvasagar/vim-table-mode'

    " latex
    Plug 'lervag/vimtex'
    " Plug 'KeitaNakamura/tex-conceal.vim', { 'for': 'tex' }

    " Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    Plug 'voldikss/vim-floaterm', { 'on':['FloatermNew', 'FloatermToggle']}

    " Plug 'Chiel92/vim-autoformat', {'on':'Autoformat'}
    Plug 'airblade/vim-rooter'

    " Plug 'RRethy/vim-illuminate'
    Plug 'rhysd/clever-f.vim'

    " Plug 'hotoo/pangu.vim'

    Plug 'junegunn/vim-peekaboo'

    Plug 'voldikss/vim-browser-search', {'on':['<Plug>SearchNormal', '<Plug>SearchVisual']}

    Plug 'tpope/vim-surround'
    " Plug 'tpope/vim-repeat'
    Plug 'lambdalisue/suda.vim'
    " Plug 'bagrat/vim-buffet'
    Plug 'kevinhwang91/rnvimr', {'on': 'RnvimrToggle'}
    Plug 'kevinhwang91/nvim-hlslens'
    " Plug 'vim-save/vim-clap'
    Plug 'liuchengxu/vim-clap', {'do': ':Clap install-binary!', 'on' : 'Clap' }
    Plug 'vn-ki/coc-clap'

    Plug 'liuchengxu/vista.vim', { 'on': 'Vista!!' }

    " 对中文不友好
    " Plug 'chaoren/vim-wordmotion'

    Plug 'kristijanhusak/defx-git', {'on':'Defx'}
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '3c07232'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    set nofoldenable

    Plug 'romgrk/barbar.nvim'
    " Plug 'heapslip/vimage.nvim'
		Plug 'rhysd/accelerated-jk'
		Plug 'D0n9X1n/quickrun.vim', {'on': 'QuickRun'}


call plug#end()
