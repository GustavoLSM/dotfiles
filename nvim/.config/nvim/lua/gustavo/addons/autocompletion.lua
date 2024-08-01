return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip"
		}
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path"
		},
		config = function()
			require("cmp").setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end
				},
				mapping = require("cmp").mapping.preset.insert({
					["<C-Space>"] = require("cmp").mapping.complete(),
					["<C-e>"] = require("cmp").mapping.abort(),
					["<CR>"] = require("cmp").mapping.confirm({ select = true })
				}),
				sources = require("cmp").config.sources({
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "path" }
				})
			})
		end
	}
}
