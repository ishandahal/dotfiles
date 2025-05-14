vim.g.mapleader = " " -- Map leader key to spac
vim.g.maplocalleader = " " -- Map local leader key to space

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })

vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Use global clipboard" }) -- Yank to systemclip board
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Use global clipboard" }) -- Yank single line to system clipboard

vim.keymap.set({ "n", "x" }, "<leader>p", '"+p', { desc = "Paste from global clipboard" }) -- Paste from system clipboard
vim.keymap.set("x", "p", [["_dP]], { desc = "Don't pick up after pasting over highlighted text" })

vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Do not copy what you delete" })
vim.keymap.set({ "n", "x" }, "X", '"_d', { desc = "Do not copy what you delete" })

vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>", { desc = "Select all text in current buffer" })

vim.keymap.set("n", "<leader><C-u>", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "J", "mzJ`z", { desc = "Line append without moving cursor" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center while going down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center while going up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "center word nexting post search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "center word pre-nexting post search" })

vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected chunk" })
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected chunk" })

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" }) -- Fugitive
