local my = {}
local conf = require('modules.my.config')


my['kevinhwang91/rnvimr'] = {
  cmd = 'RnvimrToggle',
  config = conf.rnvimr
}

my['lilydjwg/fcitx.vim'] = {
  event = 'BufRead *',
}

my['airblade/vim-rooter'] = {
  event = 'BufRead *',
  config = function()
    vim.g.rooter_patterns = {'.git', 'Makefile', '*.sln', 'build/env.sh'}
  end
}

my['lambdalisue/suda.vim'] = {
  event = 'BufRead *',
  config = function()
    vim.g.suda_smart_edit = 1
  end
}

my['thinca/vim-quickrun'] = {
  cmd = 'QuickRun',
  config = conf.quickrun
}

my['Shougo/context_filetype.vim'] = {
  event = 'BufRead *'
}

my['tyru/caw.vim'] = {
  requires = 'Shougo/context_filetype.vim',
  on_event = 'BufRead *'
}

my['lervag/vimtex'] = {
  ft = 'tex',
  config = conf.vimtex
}

my['junegunn/vim-peekaboo'] = {
  event = 'BufRead *'
}

my['vim-save/vim-lastplace'] = {
  event = 'BufRead *',
  config = conf.lastpalce
}

my['luochen1990/rainbow'] = {
  ft = 'html,css,javascript,javascriptreact,vue,go,python,c,cpp,lua,rust,vim,less,stylus,sass,scss,json,ruby,scala,toml,php,haskell',
  config = conf.rainbow
}

return my
