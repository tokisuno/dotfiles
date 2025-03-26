vim.g.mapleader      = " "
vim.g.maplocalleader = ","

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>n", function ()
  vim.diagnostic.jump({ count = 1, float = true})
end)

map("n", "<leader>p", function ()
  vim.diagnostic.jump({ count = -1, float = true})
end)

map("n", "<C-e>", function ()
  vim.diagnostic.open_float()
end)

map("n", "<C-w><C-u>", vim.cmd.bunload, { noremap = true, silent = true, desc = "Buffer unload" })

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

map("n", "<leader>d", ":Trouble diagnostics filter.buf=0 win = { type = split, position = right, relative = win, size = 0.4}<cr>", { desc = "Split diagnostics window"})

-- opening menus
map("n", "<leader>e", ":e .<cr>", { noremap = true, silent = true, desc = "Open oil.nvim" })
map("n", "<leader>l", ":Lazy<cr>", { noremap = true, silent = true, desc = "Open lazy.nvim" })
map("n", "<leader>m", ":Mason<cr>", { noremap = true, silent = true, desc = "Open Mason" })

-- some native emacs bindings i prefer
map("n", "<C-x><C-f>", ":e .<cr>", { noremap = true, silent = true, desc = "Opens oil.nvim (emacs style)"})
map('n', '<C-x>k', vim.cmd.bdelete, { noremap = true, silent = true, desc = "Buffer delete"})
