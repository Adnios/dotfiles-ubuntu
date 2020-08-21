call plug#begin('~/.config/nvim/plugged')
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'lilydjwg/fcitx.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'yggdroot/indentline',{ 'for': ['c', 'h', 'cpp', 'py', 'json', 'go', 'java', 'vim', 'md'] }
    Plug 'easymotion/vim-easymotion',{'on': ['<Plug>(easymotion-bd-f)', '<Plug>(easymotion-overwin-f)']}
    Plug '~/.fzf', {'on':['Files', 'History', 'Colors', 'Rg', 'Rg', 'Marks', 'Ag', 'Buffers']}
    Plug 'junegunn/fzf.vim', {'on':['Files', 'History', 'Colors', 'Rg', 'RG', 'Marks', 'Ag', 'Buffers']}
    Plug 'tpope/vim-commentary'
    " 美化
    Plug 'hardcoreplayers/dashboard-nvim'
    Plug 'hardcoreplayers/spaceline.vim'
    Plug 'hardcoreplayers/oceanic-material'
    Plug 'sheerun/vim-polyglot'
    Plug 'mboughaba/i3config.vim', { 'for': 'i3config' }
    Plug 'ryanoasis/vim-devicons'

    " markdown
    Plug 'godlygeek/tabular', { 'for': 'markdown' }
    Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
    Plug 'iamcco/mathjax-support-for-mkdp', { 'for': 'markdown' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dkarter/bullets.vim', { 'for': 'markdown' }
    Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }
    Plug 'ferrine/md-img-paste.vim', { 'for': 'markdown' }
    Plug 'dhruvasagar/vim-table-mode'

    " latex
    Plug 'lervag/vimtex', { 'for': 'tex' }
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

    " Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    Plug 'voldikss/vim-floaterm', { 'on':['FloatermNew', 'FloatermToggle']}

    Plug 'Chiel92/vim-autoformat', {'on':'Autoformat'}
    Plug 'airblade/vim-rooter'

    " Plug 'RRethy/vim-illuminate'
    Plug 'rhysd/clever-f.vim'

    Plug 'hotoo/pangu.vim'

    Plug 'junegunn/vim-peekaboo'

    Plug 'voldikss/vim-browser-search', {'on':['<Plug>SearchNormal', '<Plug>SearchVisual']}

    " Plug 'tpope/vim-obsession', {'on':'Obsession'}
    Plug 'tpope/vim-surround'
    Plug 'lambdalisue/suda.vim'
    Plug 'bagrat/vim-buffet'
    Plug 'kevinhwang91/rnvimr'
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!', 'on' : 'Clap' }
    Plug 'vn-ki/coc-clap', {'on' : 'Clap'}

    Plug 'liuchengxu/vista.vim', { 'on': 'Vista!!' }

call plug#end()
