return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "php", "javascript", "html", "css", "lua" },
			auto_install = true
		})
	end
}
