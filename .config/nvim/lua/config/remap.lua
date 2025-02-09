local map = vim.keymap.set
local builtin = require("telescope.builtin")
local opts = { noremap=true, silent=true }

vim.g.mapleader      = " "
vim.g.maplocalleader = ","

map("n", "<leader>bn", vim.cmd.bdelete, { desc = "Buffer quit" })
map("n", "<leader>bv", vim.cmd.bunload, { desc = "Buffer unload" })

-- Disable arrow keys in all modes
-- map('', '<up>',    '<nop>')
-- map('', '<down>',  '<nop>')
-- map('', '<left>',  '<nop>')
-- map('', '<right>', '<nop>')

map("n", "<C-p>", ":bprev<cr>", opts)
map("n", "<C-n>", ":bnext<cr>", opts)

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })

-- ctrl-backspace when in insert mode
map("i", "<C-h>", "<C-w>", opts)

-- opening menus
map("n", "<leader>o", ":e .<cr>", { noremap = true, silent = true, desc = "Open oil.nvim" })
map("n", "<leader>l", ":Lazy<cr>", { noremap = true, silent = true, desc = "Open lazy.nvim" })
map("n", "<leader>m", ":Mason<cr>", { noremap = true, silent = true, desc = "Open Mason" })

-- telescope
map('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fq', builtin.quickfix, { desc = 'Telescope quickfix' })

-- trouble.nvim
map('n', '<leader>d', "<cmd>echo 'this is for trouble later'<cr>")
map('n', "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map('n', "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
map('n', "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
map('n', "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc = "LSP Definitions / references / ... (Trouble)" })
map('n', "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map('n', "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
