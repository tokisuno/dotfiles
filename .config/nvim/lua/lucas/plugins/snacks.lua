return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		explorer = { enabled = true },
		picker = { enabled = true },
		scope = { enabled = true },
    indent = { enabled = true }
	},
	keys = {
    ---@diagnostic disable:undefined-global
		{ "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers", },
		{ "<leader>B", function() Snacks.picker.buffers() end, desc = "Buffers", },
		{ "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages", },
		{ "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep", },
		{ "<leader>/", function() Snacks.picker.grep() end, desc = "Grep", },
		{ "<leader>sf", function() Snacks.picker.smart() end, desc = "Smart Find Files", },
		{ "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Grep word", },
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition"},
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration"},
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
	},
}
