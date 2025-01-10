local map = vim.keymap.set
local opts = { noremap=true, silent=false }
local builtin = require('telescope.builtin')
local trailspace = require('mini.trailspace')

vim.g.mapleader      = " "
vim.g.maplocalleader = ","

map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-h>", "<C-w>h")

-- Toggling things
map("n", "<leader>ts", ":LiveServerToggle<cr>", { desc = "Toggle LiveServer" })
map("n", "<leader>tw", ":setlocal wrap!<cr>", { desc = "Toggle wordwrapping" })
map("n", "<leader>tz", ":ZenMode<cr>", { desc = "Toggle ZenMode (Coding)" })

map("n", "<leader>so", "<cmd>so<cr>", { desc = "Source file" })
map("n", "<leader>qq", vim.cmd.bd, { desc = "Close buffer" })

-- Removing arrow key navigation (to turn into something later)
map('', '<up>',    '<nop>')
map('', '<down>',  '<nop>')
map('', '<left>',  '<nop>')
map('', '<right>', '<nop>')

-- Buffer movement
map('n', '<C-p>', ':bprev<cr>')
map('n', '<C-n>', ':bnext<cr>')

-- Quality of life
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
map("n", "<leader>dd", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace all" })
map("n", "<leader>dt", ":pu=strftime('%c')<cr>", { desc = "Paste Local Time" })
map("n", "<leader>re", function () trailspace.trim() end, { desc = "Remove trailing linespace" })
map("n", "<leader>rl", function () trailspace.trim() end, { desc = "Remove empty lines with linespace" })
map("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
map("n", "<localleader><localleader>", "<cmd>noh<cr>", { desc = "Removes highlighting" })
map("n", "H", "^")
map("n", "L", "$")

-- Sets launch perms for file being written to
map("n", "<leader>se", "<cmd>!chmod +x %<CR>", { desc = "chmod +x", silent = true })
map("n", "<leader>ss", "<cmd>set spelllang=en_ca<cr>", { desc = "Spellang to ENG (CA)", silent = true })

-- ctrl-backspace when in insert mode
map("i", "<C-h>", "<C-w>", { silent = true })

-- trouble.nvim
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
map("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>")
map("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>")
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>")
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>")

-- Some quick compiling when going through textbooks
map("n", "<leader>cn", ":!node %<cr>", { desc = "Run with Node" })
map("n", "<leader>cc", ":!gcc % -o asdf && ./asdf<cr>", { desc = "Compile w/ GCC & run" })
map("n", "<leader>ck", ":!gcc -O -Wall -W -pedantic -ansi -std=c99 -o asdf %<cr>", { desc = "Compile w/ C99 & run" })

-- Opening things
map("n", "<leader>pv", ":e .<cr>", { desc = "Oil" })
map("n", "<leader>pf", "<cmd>NvimTreeToggle<cr>", { desc = "Nvim-Tree" })
map("n", "<leader>o", ":Lazy<cr>", { desc = "Open lazy.nvim" })
map("n", "<leader>m", ":Mason<cr>", { desc = "Open Mason" })

-- telescope funzies
map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
map("n", "<leader>ff", builtin.find_files, { desc = "Files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
map("n", "<leader>fk", builtin.keymaps, { desc = "Keymaps" })
map("n", "<leader>fm", builtin.man_pages, { desc = "Man pages" })
map("n", "<leader>fo", builtin.oldfiles, {desc = "Old files" })
