-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  {
    "tpope/vim-fugitive"
  },
  {
  'lewis6991/gitsigns.nvim',
  config =function ()
    require("gitsigns").setup()

    vim.keymap.set('n',"<leader>gp",":Gitsigns preview_hunk<CR>", {})
    vim.keymap.set('n',"<leader>gt",":Gitsigns toggle_current_line_blame<CR>", {})
  end
  }
}
