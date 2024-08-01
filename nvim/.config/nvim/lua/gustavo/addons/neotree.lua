return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"MunifTanjim/nui.nvim"
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			window = {
				position = "right"
			}
		})

		vim.keymap.set("n", "<leader>e", ":Neotree<CR>")
	end
}
