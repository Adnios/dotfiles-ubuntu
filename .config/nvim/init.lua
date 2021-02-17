-- Load Modules:
-- TODO set list not working in option.lua, it working when put the `list` in
-- TODO coc-lua not work
-- bw_local
require("domain.core")
-- my config
vim.api.nvim_command('autocmd CursorHold * silent! update')
vim.api.nvim_exec([[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
]], false)
-- vim.cmd('set list')
