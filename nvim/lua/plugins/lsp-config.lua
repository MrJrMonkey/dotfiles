return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pylsp" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("lua_ls", { capabilities = capabilities })
      vim.lsp.config("pylsp", { capabilities = capabilities })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pylsp")

      -- Diagnostic Virtual Text Settings (Styled Box appearance)
      vim.diagnostic.config({
        virtual_text = {
          prefix = "█ ", -- Gives the block/tag look on the left of errors
          spacing = 4,
        },
        signs = true,
        underline = true,
      })

      -- Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Show hover documentation" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP: Go to references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code actions" })
    end,
  },
}
