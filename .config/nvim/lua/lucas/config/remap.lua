vim.g.mapleader      = " "
vim.g.maplocalleader = ","

vim.keymap.del({ 'i', 's' }, '<Tab>')
vim.keymap.del({ 'i', 's' }, '<S-Tab>')

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-f>", function ()
  vim.diagnostic.jump({ count = 1, float = true})
end)

map("n", "<C-b>", function ()
  vim.diagnostic.jump({ count = -1, float = true})
end)

map("n", "<C-e>", function ()
  vim.diagnostic.open_float()
end)

map("n", "<leader>w", [[:%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = true, silent = true, desc = "Replace word" })

map("n", "<C-w><C-u>", vim.cmd.bunload, { noremap = true, silent = true, desc = "Buffer unload" })

map({ "n", "x" }, "H", "^")
map({ "n", "x" }, "L", "g_")

map("n", "<C-p>", ":bprev<cr>", opts)
map("n", "<C-n>", ":bnext<cr>", opts)

-- MILC
-- Man I Love Centring
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n",     "nzzzv")
map("n", "N",     "Nzzzv")
map("n", "*",     "*zz", opts)
map("n", "#",     "#zz", opts)
map("n", "g*",    "g*zz", opts)
map("n", "g#",    "g#zz", opts)

map("n", "<leader>p", "m`o<ESC>p``", { desc = "paste below current line" })
map("n", "<leader>P", "m`O<ESC>p``", { desc = "paste above current line" })

map("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })

-- ctrl-backspace when in insert mode
map("i", "<C-h>", "<C-w>", opts)

map("n", "<leader>d",
    ":Trouble diagnostics filter.buf=0 win = { type = split, position = right, relative = win, size = 0.4}<cr>",
    { desc = "Split diagnostics window"})

-- opening menus
map("n", "<leader>e", ":e .<cr>", { noremap = true, silent = true, desc = "Open oil.nvim" })
map("n", "<leader>l", ":Lazy<cr>", { noremap = true, silent = true, desc = "Open lazy.nvim" })
map("n", "<leader>m", ":Mason<cr>", { noremap = true, silent = true, desc = "Open Mason" })

-- some native emacs bindings i prefer
map("n", "<C-x><C-f>", ":e .<cr>", { noremap = true, silent = true, desc = "Opens oil.nvim (emacs style)"})
map('n', '<C-x>k', vim.cmd.bdelete, { noremap = true, silent = true, desc = "Buffer delete"})

vim.keymap.set("x", "<leader>p", [["_dP]])
