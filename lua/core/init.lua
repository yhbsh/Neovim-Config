require "core.lazy"
require "core.telescope"
require "core.lsp"
require "core.treesitter"

-- global config
vim.wo.nu = true
vim.wo.rnu = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

