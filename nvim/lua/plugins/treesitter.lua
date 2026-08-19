return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function ()
  local config = require("nvim-treesitter.config")
  config.setup({
    ensure_installed = {"lua","python","java","javadoc"},
    highlight = {enable = true},
    indent = {enable = true},
  })
  end
}
