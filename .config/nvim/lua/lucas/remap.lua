vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.del({ "i", "s" }, "<Tab>")
vim.keymap.del({ "i", "s" }, "<S-Tab>");

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<leader>td', function() require('vling').deadkeys.toggle() end, { desc = "Toggle Deadkeys" })
map('n', '<leader>ti', function() require('vling').ipa.toggle() end, { desc = "Toggle IPA" })

map('n', 'j', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'j']], { expr = true })
map('n', 'k', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'k']], { expr = true })

-- super useful remap
map("n", "<C-c>", "yygccp", { remap = true })
map("n", "<C-e>", function() vim.diagnostic.open_float() end)
map("n", "<leader>i", "gg=G<C-o>", { noremap = true, silent = true, desc = "Indents file" })
map("n", "<esc>", ":noh<cr>:lua vim.snippet.stop()<cr>", { noremap = true, silent = true, desc = "Does the useful stuff"})

map({ "n", "x" }, "H", "^")
map({ "n", "x" }, "L", "g_")
map("n", "x", '"_x', opts)

map("n", "<C-p>", ":bprev<cr>", opts)
map("n", "<C-n>", ":bnext<cr>", opts)
map("n", "<Tab>", ":bnext<CR>", { silent = false })
map("n", "<S-Tab>", ":bprevious<CR>", { silent = false })

map('v', '<', '<gv')
map('v', '>', '>gv')

map({'i', 'c'}, "<C-l>", "<C-o>A", { desc = "Go to the end of the line while in insert mode"})

vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- Alt+k: Move line up
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- Alt+j: Move line down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- Alt+j: Move selection down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- Alt+k: Move selection up

-- MILC
-- Man I Love Centring
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "*", "*zz", opts)
map("n", "#", "#zz", opts)
map("n", "g*", "g*zz", opts)
map("n", "g#", "g#zz", opts)

map("n", "<leader>p", "m`o<ESC>p``", { desc = "paste below current line" })
map("n", "<leader>P", "m`O<ESC>p``", { desc = "paste above current line" })
map("n", "<leader><C-p>", '"+p', { desc = "paste above current line" })

map("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
map("n", "<leader>Y", '"+yy', { desc = "Copy line to system clipboard" })

-- ctrl-backspace when in insert mode
map("i", "<C-h>", "<C-w>", opts)

map("n", "<leader>d",
":Trouble diagnostics filter.buf=0 win = { type = split, position = right, relative = win, size = 0.4 }<cr>",
{ desc = "Split diagnostics window", silent = true })

-- opening menus
map("n", "<localleader><localleader>", ":e .<cr>", { noremap = true, silent = true, desc = "Open oil.nvim" })
map("n", "<localleader>l", ":Lazy<cr>", { noremap = true, silent = true, desc = "Open lazy.nvim" })
map("n", "<localleader>m", ":Mason<cr>", { noremap = true, silent = true, desc = "Open Mason" })

map("n", "<leader>bd", vim.cmd.bdelete, { noremap = true, silent = true, desc = "Close current buffer" })

local toggle_wrap = function()
  vim.o.wrap = not vim.o.wrap
end

local toggle_spell = function()
  vim.o.spell = not vim.o.spell
end

-- toggling things
map("n", "<leader>t", "", { noremap = true, silent = true, desc = "Toggle..." })
map("n", "<leader>tw", toggle_wrap, { noremap = true, silent = true, desc = "Toggle..." })
map("n", "<leader>ts", toggle_spell, { noremap = true, silent = true, desc = "Toggle..." })

map("n", "[c", function () require('treesitter-context').go_to_context(vim.v.count1) end, { silent = true })

-- rest.nvim
map("n", "<leader>rr", ":Rest run<CR>", { desc = "Run HTTP Request" })
map("n", "<leader>ro", ":Rest open<CR>", { desc = "Open REST.nvim" })

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fl', "<cmd>Telescope bibtex<cr>", { desc = 'Telescope Bibtex' })
map('i', '<C-.>', "<cmd>Telescope bibtex<cr>", { desc = 'Telescope Bibtex' })
