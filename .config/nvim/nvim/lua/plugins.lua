-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Simple plugins can be specified as strings
  use {'liuchengxu/vim-which-key'}

	use {'lilydjwg/fcitx.vim'}
	use {'neoclide/coc.nvim'}
	use {'yggdroot/indentline'}
	use {'easymotion/vim-easymotion'}
	use {'~/.fzf'}
	use {'junegunn/fzf.vim'}
	use 'tpope/vim-commentary'
	use 'glepnir/dashboard-nvim'
  -- use {'glepnir/galaxyline.nvim', config = require("eviline")}

	use {'kyazdani42/nvim-web-devicons'}
	use 'romgrk/doom-one.vim'
	use 'luochen1990/rainbow'
	use 'mboughaba/i3config.vim'
	-- use {'mboughaba/i3config.vim', ft = {'i3config'}}

	use {'godlygeek/tabular', ft = {'markdown'}}
	use {'plasticboy/vim-markdown', ft = {'markdown'}}
	use {'iamcco/mathjax-support-for-mkdp', ft = {'markdown'}}
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

	use {'lervag/vimtex', ft = {'tex'}}

	use 'honza/vim-snippets'

	use {'voldikss/vim-floaterm'}

	use 'airblade/vim-rooter'

	use 'rhysd/clever-f.vim'

	use 'junegunn/vim-peekaboo'

	use {'voldikss/vim-browser-search'}

	use 'tpope/vim-surround'
	use 'lambdalisue/suda.vim'
	use {'kevinhwang91/rnvimr'}
	use {'liuchengxu/vim-clap', run = ':Clap install-binary!'}
	use 'vn-ki/coc-clap'

	use {'liuchengxu/vista.vim'}

	use {'kristijanhusak/defx-git'}
	use 'kristijanhusak/defx-icons'
	use {'Shougo/defx.nvim'}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'romgrk/barbar.nvim'
	use 'rhysd/accelerated-jk'
	use {'D0n9X1n/quickrun.vim'}
end)
