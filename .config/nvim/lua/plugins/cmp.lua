return {
	{
		"saghen/blink.cmp",
		version = "*",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		opts = {
			appearance = {
				use_nvim_cmp_as_default = true,
			},
			keymap = {
				preset = "default",
				["<C-n>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },
				["<C-y>"] = { "select_and_accept" },
				["<C-r>"] = { "snippet_forward", "fallback" },
				["<C-e>"] = { "snippet_backward", "fallback" },
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
}
