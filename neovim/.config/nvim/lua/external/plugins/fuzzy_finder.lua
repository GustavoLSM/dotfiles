return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")

		local file_ignore_patterns = {
			"node_modules/",
			"package%-lock%.json"
		}

		vim.keymap.set("n", "<C-f>", function()
			builtin.find_files({
				file_ignore_patterns = file_ignore_patterns
			})
		end)

		vim.keymap.set("n", "<leader>f", function()
			builtin.live_grep({
				file_ignore_patterns = file_ignore_patterns
			})
		end)

	end
}
