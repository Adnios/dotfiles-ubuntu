local api = vim.api
local lspconfig = require 'lspconfig'
local global = require 'core.global'
local format = require('modules.completion.format')

vim.cmd [[packadd lspsaga.nvim]]
local saga = require 'lspsaga'
saga.init_lsp_saga()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local enhance_attach = function(client,bufnr)
  if client.resolved_capabilities.document_formatting then
    format.lsp_before_save()
  end
  api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

lspconfig.gopls.setup {
  cmd = {"gopls","--remote=auto"},
  on_attach = enhance_attach,
  capabilities = capabilities,
  init_options = {
    usePlaceholders=true,
    completeUnimported=true,
  }
}

lspconfig.sumneko_lua.setup {
  cmd = {
    global.home.."/.config/coc/extensions/coc-lua-data/lua-language-server/bin/Linux/lua-language-server",
    "-E",
    global.home.."/.config/coc/extensions/coc-lua-data/lua-language-server/main.lua"
  };
  settings = {
    Lua = {
      diagnostics = {
        enable = true,
        globals = {"vim","packer_plugins"}
      },
      runtime = {version = "LuaJIT"},
      workspace = {
        library = vim.list_extend({[vim.fn.expand("$VIMRUNTIME/lua")] = true},{}),
      },
    },
  }
}

lspconfig.tsserver.setup {
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    enhance_attach(client)
  end
}

lspconfig.clangd.setup {
  cmd = {
    "clangd-9",
    "--background-index",
    "--suggest-missing-includes",
    "--clang-tidy",
    "--header-insertion=iwyu",
  },
}

lspconfig.pyright.setup{}

lspconfig.ccls.setup {
  init_options = {
	  compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  }
}

local servers = {
  'dockerls','bashls','zls','rust_analyzer'
}

for _,server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = enhance_attach
  }
end
