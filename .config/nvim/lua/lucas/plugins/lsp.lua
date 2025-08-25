return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
      { "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			-- require("mason").setup({
			-- 	registries = { "github:crashdummyy/mason-registry", "github:mason-org/mason-registry" },
			-- })
			require("mason-lspconfig").setup({
				ensure_installed = {
					"gopls",
					"lua_ls",
					"emmet_ls",
					"clangd",
					"marksman",
					"rust_analyzer",
				},
			})
		end,
	},
}
