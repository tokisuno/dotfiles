return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = {
				"stylua",
			},
			python = {
				"ruff",
			},
			rust = {
				"rustfmt",
			},
			-- javascript = {
			-- 	"prettierd",
			-- },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
