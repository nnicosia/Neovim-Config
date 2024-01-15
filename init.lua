require("config.keymaps")
require("config.options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
require("lazy").setup("plugins")
local builtin = require("telescope.builtin")

--require("nvim-treesitter.install").prefer_git = false

--require("nvim-treesitter.install").compilers = { ":cc" }
