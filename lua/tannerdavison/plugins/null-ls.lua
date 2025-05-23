return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.clang_format.with({
						command = vim.fn.has("win32") == 1 and "C:\\msys64\\mingw64\\bin\\clang-format.exe"
							or "clang-format",
					}),
				},
			})
		end,
	},
	-- Other plugins can go here
}
