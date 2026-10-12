local servers = { "lua_ls", "pylsp", "clangd","asm"}

return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = servers,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
		-- Shared capabilities for every server
		vim.lsp.config("*", {
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})
		vim.lsp.enable(servers)

		vim.diagnostic.config({
			virtual_text = { prefix = "█ ", spacing = 4 },
			signs = true,
			underline = true,
		})

		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })

		local map = function(lhs, rhs, desc)
		vim.keymap.set("n", lhs, rhs, { desc = "LSP: " .. desc })
		end

		map("K", vim.lsp.buf.hover, "Hover documentation")
		map("<leader>gd", vim.lsp.buf.definition, "Go to definition")
		map("<leader>gr", vim.lsp.buf.references, "Go to references")
		map("<leader>ca", vim.lsp.buf.code_action, "Code actions")
		end,
	},
}
