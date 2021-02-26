local config = {}

local function load_env_file()
  local env_file = os.getenv("HOME")..'/.env'
  local env_contents = {}
  if vim.fn.filereadable(env_file) ~= 1 then
    print('.env file does not exist')
    return
  end
  local contents = vim.fn.readfile(env_file)
  for _,item in pairs(contents) do
    local line_content = vim.fn.split(item,"=")
    env_contents[line_content[1]] = line_content[2]
  end
  return env_contents
end

local function load_dbs()
  local env_contents = load_env_file()
  local dbs = {}
  for key,value in pairs(env_contents) do
    if vim.fn.stridx(key,"DB_CONNECTION_") >= 0 then
      local db_name = vim.fn.split(key,"_")[3]:lower()
      dbs[db_name] = value
    end
  end
  return dbs
end

function config.vim_dadbod_ui()
  if packer_plugins['vim-dadbod'] and not pakcer_plugins['vim-dadbod'].loaded then
    vim.cmd [[packadd vim-dadbod]]
  end
  vim.g.db_ui_show_help = 0
  vim.g.db_ui_win_position = 'left'
  vim.g.db_ui_use_nerd_fonts = 1
  vim.g.db_ui_winwidth = 35
  vim.g.db_ui_save_location = os.getenv("HOME") .. '/.cache/vim/db_ui_queries'
  vim.g.dbs = load_dbs()
end

function config.indent_guides()
  require('indent_guides').setup {
    even_colors = { fg ='NONE',bg='#23272e'},
    odd_colors = {fg='NONE',bg='#23272e'}
  }
end

function config.vim_vista()
  vim.g['vista#renderer#enable_icon'] = 1
  vim.g.vista_disable_statusline = 1
  vim.g.vista_default_executive = 'coc'
  vim.g.vista_echo_cursor_strategy = 'floating_win'
  vim.g.vista_vimwiki_executive = 'markdown'
  vim.g.vista_executive_for = {
    vimwiki =  'markdown',
    pandoc = 'markdown',
    markdown = 'toc',
    typescript = 'nvim_lsp',
    typescriptreact =  'nvim_lsp',
    python = 'coc',
    cpp = 'coc',
    cu = 'coc',
    cc = 'coc',
  }
  -- vim.g.vista#renderer#icons = {
  --              function =  '\uf794',
  --              variable = '\u0ec2',
  -- }
end

function config.fomatter_nvim()
  require('formatter').setup({
    logging = false,
    filetype = {
      typescriptreact = {
        function()
            return {
              exe = "prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
              stdin = true
            }
          end
      },
      typescript = {
        function()
            return {
              exe = "prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
              stdin = true
            }
          end
      },
      lua = {
          function()
            return {
              exe = "lua-format",
              args = {"--indent-count", 2, "--stdin"},
              stdin = true
            }
          end
        }
      }
    })
end

function config.indentLine()
  vim.g.indentLine_enabled = 1
  vim.g.indentLine_char='┆'
  vim.g.indentLine_fileTypeExclude = {'defx', 'denite', 'dashboard', 'tagbar', 'vista_kind', 'vista', 'rnvimr'}
  vim.g.indentLine_concealcursor = 'niv'
  vim.g.indentLine_showFirstIndentLevel =1
  vim.nvim_command('autocmd! FileType dashboard let g:indentLine_enabled = 0')
  vim.nvim_command('autocmd BufLeave <buffer> let g:indentLine_enabled = 1')
end

return config