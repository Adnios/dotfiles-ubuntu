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

function config.rnvimr()
  vim.g.rnvimr_enable_ex = 1
  vim.g.rnvimr_enable_bw = 1
  vim.g.rnvimr_enable_picker = 1
  vim.g.rnvimr_draw_border = 0
  vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'
end

return config
