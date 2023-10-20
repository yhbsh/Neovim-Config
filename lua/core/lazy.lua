
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
