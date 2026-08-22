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

			-- 1. Set background & text colors for virtual text diagnostic boxes
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#3a232d", fg = "#f7768e", bold = true })
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { bg = "#342d20", fg = "#e0af68", bold = true })
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { bg = "#1f2d3a", fg = "#7aa2f7" })
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { bg = "#1d3330", fg = "#7dcfff" })

			-- 2. Diagnostic Virtual Text Settings
			vim.diagnostic.config({
				virtual_text = {
					prefix = "█ ", -- Solid color block tag on the left edge
					spacing = 4,
				},
				signs = true,
				underline = true,
			})

			-- Change floating window background and border colors
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" }) -- Darker background for the box
			-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#61afef", bg = "#1e222a" }) -- Blue border 
			-- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Show hover documentation" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP: Go to references" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code actions" })
		end,
	},
}
