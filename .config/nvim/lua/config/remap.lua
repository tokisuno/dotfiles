local map = vim.keymap.set
local fzf = require('fzf-lua')
local opts = { noremap=true, silent=true }

vim.g.mapleader      = " "
vim.g.maplocalleader = ","

map("n", "<leader>bn", vim.cmd.bdelete, { desc = "Buffer quit" })
map("n", "<leader>bv", vim.cmd.bunload, { desc = "Buffer unload" })

-- Disable arrow keys in all modes
map('', '<up>',    '<nop>')
map('', '<down>',  '<nop>')
map('', '<left>',  '<nop>')
map('', '<right>', '<nop>')

map('n', '<down>',  ':nohlsearch<cr>', { desc = "Clear highlights" })

map("n", "H", ":bprev<cr>", opts)
map("n", "L", ":bnext<cr>", opts)

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })

-- ctrl-backspace when in insert mode
map("i", "<C-h>", "<C-w>", opts)

-- Opening things
map("n", "<leader>o", ":e .<cr>",  { noremap = true, silent = true, desc = "Open oil.nvim"   })
map("n", "<leader>l", ":Lazy<cr>",  { noremap = true, silent = true, desc = "Open lazy.nvim" })
map("n", "<leader>m", ":Mason<cr>", { noremap = true, silent = true, desc = "Open Mason"     })

-- telescope funzies
map('n', '<leader>fb', fzf.builtin)
map('n', '<leader>fd', fzf.lsp_definitions)
map('n', '<leader>ff', fzf.files)
map('n', '<leader>fg', fzf.live_grep)
map('n', '<leader>fh', fzf.helptags)
map('n', '<leader>fo', fzf.oldfiles)
map('n', '<leader>fr', fzf.lsp_references)
map('n', '<leader>ft', fzf.lsp_typedefs)
