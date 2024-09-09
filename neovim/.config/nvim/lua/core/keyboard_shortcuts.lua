vim.g.mapleader = " "

vim.keymap.set("i", "<C-f>", "<C-x><C-f>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", "<leader>c", "* :%s//")

vim.keymap.set("v", "Y", '"+y')

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
