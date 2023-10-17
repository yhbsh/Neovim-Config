-- global config
vim.wo.nu = true
vim.wo.rnu = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- lazy-vim path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- lazy-vim plugins
local plugins = {
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = 'nvim-lua/plenary.nvim' },
  { 'williamboman/mason.nvim', opts = { ensure_installed = { "gopls" } } },
  { 'ellisonleao/gruvbox.nvim', priority = 1000 , config = true},
  { 'neovim/nvim-lspconfig' },
  { 'nvim-treesitter/nvim-treesitter', build = 'TSUpdate' }
}
require("lazy").setup(plugins)

-- telescope setup
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>gf', telescope.git_files, {})


-- mason setup
require('mason').setup()

-- gruvbox color scheme setup
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

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

local treesitterconfigs = require('nvim-treesitter.configs')
treesitterconfigs.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "dart", "rust", "zig", "go", "gomod", "gosum" },
  sync_install = false,
  auto_install = true,
  highlight = { enable = true, additional_vim_regex_highlighting = false }
}
