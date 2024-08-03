return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "pyright", "tailwindcss" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
		end,
		keys = {
			{
				"<leader><Space>",
				function()
					vim.lsp.buf.hover()
				end,
				desc = "Open Buffer Hints",
			},
			{
				"<leader>gd",
				function()
					vim.lsp.buf.definition()
				end,
				desc = "Go to definition",
			},
			{
				"<leader>gr",
				function()
					vim.lsp.buf.references()
				end,
				desc = "Show references",
			},
			{
				"<leader>ca",
				function()
					vim.lsp.buf.code_action()
				end,
				desc = "Show code actions",
			},
		},
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					require("none-ls.diagnostics.eslint_d"),
					require("none-ls.code_actions.eslint"),
				},
			})
		end,
		keys = {
			{
				"<leader>gf",
				function()
					vim.lsp.buf.format()
				end,
				desc = "Format code",
			},
		},
	},
}
