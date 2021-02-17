-- Load Modules:
require("core")
-- my config
vim.api.nvim_command('autocmd CursorHold * silent! update')
vim.api.nvim_exec([[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
]], false)
-- vim.cmd('set list')
