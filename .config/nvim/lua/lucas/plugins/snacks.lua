return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@diagnostic disable: undefined-doc-name
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true },
    indent = { enabled = true },
    scope = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true },
  },
  keys = {
  ---@diagnostic disable: undefined-global
    { "<leader>b", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Find Git Files" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Open help files" },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
    { "<leader>fu", function() Snacks.picker.undo() end, desc = "Undo history" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gi", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
  }
}
