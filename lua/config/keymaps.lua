local km = vim.api.nvim_set_keymap
local defaultOpts = { noremap = true, silent = true }

vim.g.mapleader = " "
km("n", "<C-s>", "<cmd>w<cr>", {})
km("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {})
km("n", "<C-h>", "<C-w>h", defaultOpts)
km("n", "<C-j>", "<C-w>j", defaultOpts)
km("n", "<C-k>", "<C-w>k", defaultOpts)
km("n", "<C-l>", "<C-w>l", defaultOpts)
km("n", "<leader>v", "<cmd>Neogit<cr>", {})
vim.cmd(":vnoremap < <gv")
vim.cmd(":vnoremap > >gv")
