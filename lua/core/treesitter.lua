
local treesitterconfigs = require('nvim-treesitter.configs')
treesitterconfigs.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "dart", "rust", "zig", "go", "gomod", "gosum" },
  sync_install = false,
  auto_install = true,
  highlight = { enable = true, additional_vim_regex_highlighting = false }
}
