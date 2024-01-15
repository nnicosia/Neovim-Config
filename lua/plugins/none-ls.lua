return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.diagnostics.eslint_d,
				},
			})
		end,
	},
	{
		"https://git.sr.ht/~nedia/auto-format.nvim",
		event = "BufWinEnter",
		config = function()
			require("auto-format").setup({
				-- The name of the augroup.
				augroup_name = "AutoFormat",

				-- If formatting takes longer than this amount of time, it will fail. Having no
				-- timeout at all tends to be ugly - larger files, complex or poor formatters
				-- will struggle to format within whatever the default timeout
				-- `vim.lsp.buf.format` uses.
				timeout = 6000,

				-- These filetypes will not be formatted automatically.
				exclude_ft = {},

				-- Prefer formatting via LSP for these filetypes.
				prefer_lsp = {},
			})
		end,
	},
}
