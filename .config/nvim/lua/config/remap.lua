local map = vim.keymap.set
local fzf = require('fzf-lua')
local opts = { noremap=true, silent=false }

vim.g.mapleader      = " "
vim.g.maplocalleader = ","

-- map("n", "<C-l>", "<C-w>l")
-- map("n", "<C-k>", "<C-w>k")
-- map("n", "<C-j>", "<C-w>j")
-- map("n", "<C-h>", "<C-w>h")

map("n", "<leader>bn", vim.cmd.bdelete, { desc = "Buffer quit" })
map("n", "<leader>bv", vim.cmd.bunload, { desc = "Buffer unload" })

-- Removing arrow key navigation (to turn into something later)
map('', '<up>',    '<nop>')
map('', '<down>',  '<nop>')
map('', '<left>',  '<nop>')
map('', '<right>', '<nop>')

map("n", "H", ":bprev<cr>", { noremap = true, silent = true})
map("n", "L", ":bnext<cr>", { noremap = true, silent = true})

-- Quality of life
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<leader>s", [[:%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>dt", ":pu=strftime('%c')<cr>", { desc = "Paste Local Time" })

map("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
map("n", "<esc><esc>", "<cmd>noh<cr>", { silent = true, desc = "Removes highlighting" })

-- ctrl-backspace when in insert mode
map("i", "<C-h>", "<C-w>", { silent = true })

-- Opening things
map("n", "<leader>pv", ":e .<cr>", { noremap = true, silent = true, desc = "Oil" })
map("n", "<leader>o", ":Lazy<cr>", { noremap = true, silent = true, desc = "Open lazy.nvim" })
map("n", "<leader>m", ":Mason<cr>", { noremap = true, silent = true, desc = "Open Mason" })

-- telescope funzies
map('n', '<leader>fb', fzf.builtin)
map('n', '<leader>fd', fzf.lsp_definitions)
map('n', '<leader>ff', fzf.files)
map('n', '<leader>fg', fzf.live_grep)
map('n', '<leader>fh', fzf.helptags)
map('n', '<leader>fo', fzf.oldfiles)
map('n', '<leader>fr', fzf.lsp_references)
map('n', '<leader>ft', fzf.lsp_typedefs)
