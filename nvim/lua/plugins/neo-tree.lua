return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
      vim.keymap.set('n','<C-n>',':Neotree filesystem reveal left<CR>',{})
      vim.cmd('highlight NeoTreeDotfile guifg=NeoTreeNormal')
      --vim.cmd('highlight NeoTreeGitIgnored guifg=#626262');  -- used to link to NeoTreeDotfile, undo that
      -- Change directory name text color (e.g., to a bright green)
      vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#87CEEB", bold = true })

      -- Change directory icon color (e.g., to match or complement)
      vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#87CEEB" })

    end,
    lazy = false -- neo-tree will lazily load itself
}


