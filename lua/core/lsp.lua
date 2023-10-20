
-- lspconfig setup
local lspconfig = require('lspconfig')

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
}

lspconfig.gopls.setup(goplsconfig)
