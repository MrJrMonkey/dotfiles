return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
  require("tiny-inline-diagnostic").setup({
    preset = "modern",
    options = {
      show_source = true,
      use_icons_from_diagnostic = true,
      add_messages = true,
    },
  })

  -- Disable standard virtual text to prevent double error rendering
  vim.diagnostic.config({ virtual_text = false })
  end,
}
