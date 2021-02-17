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

return my
