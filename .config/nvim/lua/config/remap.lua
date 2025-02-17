local map = vim.keymap.set
local builtin = require("telescope.builtin")
local opts = { noremap=true, silent=true }

vim.g.mapleader      = " "
vim.g.maplocalleader = ","

map("n", "<C-w><C-w>", vim.cmd.bdelete, { noremap=true, silent=true, desc = "Buffer quit" })
map("n", "<C-w><C-d>", vim.cmd.bunload, { noremap=true, silent=true, desc = "Buffer unload" })

map("n", "<C-p>", ":bprev<cr>", opts)
map("n", "<C-n>", ":bnext<cr>", opts)

map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-f>", "<C-f>zz", opts)
map("n", "<C-b>", "<C-b>zz", opts)

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
map('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope document symbols' })
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fq', builtin.quickfix, { desc = 'Telescope quickfix' })
