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

return my
