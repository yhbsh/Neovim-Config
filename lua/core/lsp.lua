
-- lspconfig setup
local lspconfig = require 'lspconfig'

-- gopls config
local goplsconfig = {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
  on_attach = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
  end,
}

-- ccls config
local cclsconfig = {
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  },
  on_attach = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hoder, {buffer=0})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
  end,
}


lspconfig.ccls.setup(cclsconfig)
lspconfig.gopls.setup(goplsconfig)
