return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "intelephense", "lua_ls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").intelephense.setup({
				capabilities = require("cmp_nvim_lsp").default_capabilities()
			})
			require("lspconfig").lua_ls.setup({
				capabilities = require("cmp_nvim_lsp").default_capabilities()
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
		end
	}
}
