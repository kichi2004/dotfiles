vim.cmd('let mapleader = "\\<Space>"')

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("i", "jj", "<Esc>:<C-u>w<CR>", opts)
keymap("i", "っｊ", "<Etc>:<C-u>w<CR>", opts)


keymap("n", "<Leader>v", ":vs<CR>", opts)
keymap("n", "<Leader>s", ":sp<CR>", opts)
keymap("n", "<Leader>h", "<C-w>h", opts)
keymap("n", "<Leader>j", "<C-w>j", opts)
keymap("n", "<Leader>k", "<C-w>k", opts)
keymap("n", "<Leader>l", "<C-w>l", opts)
keymap("t", "<C-W>", "<C-\\><C-n>", opts)

