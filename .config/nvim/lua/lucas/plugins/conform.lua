return {
	{
		"stevearc/conform.nvim",
		-- event = { "BufPreWrite" },
		cmd = { "ConformInfo" },
		keys = {
			{
				-- Customize or remove this keymap to your liking
				"<leader>fix",
				-- leader -> fix
				function()
					require("conform").format({ async = true })
					vim.notify("FORMATTED!")
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				ruby = { "rubocop" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = false,
		},
	},
}
