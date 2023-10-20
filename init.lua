require "core"

-- mason setup
require('mason').setup()

-- gruvbox color scheme setup
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
