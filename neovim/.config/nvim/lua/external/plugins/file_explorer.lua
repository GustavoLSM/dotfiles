return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			window = {
				position = "right",
				mappings = {
					["<space>"] = {
						"toggle_node",
						nowait = true
					}
				}
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = {
						".git"
					}
				}
			},
			nesting_rules = {
				["package.json"] = {
					files = { ".eslint*", "prettier*", "tsconfig*", "vite*", "pnpm-lock*", "package-lock*", "bun.lockb" },
					pattern = "package%.json$"
				},
				[".env"] = {
					files = { ".env*" },
					pattern = "%.env$"
				}
			}
		})
		vim.keymap.set("n", "<leader>e", vim.cmd.Neotree)
	end
}
