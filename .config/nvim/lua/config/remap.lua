local map = vim.keymap.set
local opts = { noremap=true, silent=false }

local snip = require('luasnip')
local builtin = require('telescope.builtin')
local harpoon = require('harpoon')
local trailspace = require('mini.trailspace')

vim.g.mapleader      = " "
vim.g.maplocalleader = ","

-- Snippets
map({"i", "s"}, "<c-e>", function() snip.jump(-1) end, { silent = true })
map({"i", "s"}, "<c-r>", function() snip.jump( 1) end, { silent = true })
map("n", '<Leader>L', '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/snippets/"})<CR>', { desc = "Hot-load snippets"})

map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-h>", "<C-w>h")

local vling = require('vling')
map("n", "<leader>td", function () vling.deadkeys.toggle() end, { desc = "Toggle Deadkey Macros" })
-- map("n", "<leader>ti", function () vling.ipa.toggle() end, { desc = "Toggle IPA Macros" })

-- Zettelkasten
map("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { noremap = true, silent = false, desc = "New zettel" })
map("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { noremap = true, silent = false, desc = "List zettels" })
map("n", "<leader>zt", "<Cmd>ZkTags<CR>", { noremap = true, silent = false, desc = "List tags" })
map("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", { noremap = true, silent = false, desc = "Search through zettels" })
map("v", "<leader>zf", ":'<,'>ZkMatch<CR>",{ noremap = true, silent = false, desc = "Match zettels" })

-- Toggling things
map("n", "<leader>ts", ":LiveServerToggle<cr>", { desc = "Toggle LiveServer" })
map("n", "<leader>tw", ":setlocal wrap!<cr>", { desc = "Toggle wordwrapping" })
map("n", "<leader>tz", ":ZenMode<cr>", { desc = "Toggle ZenMode (Coding)" })

map("n", "<leader><cr>", "<cmd>Telescope cmdline<cr>", { desc = "Telescope CMDLine"})
map("n", "<leader>so", "<cmd>so<cr>", { desc = "Source file" })

-- Removing arrow key navigation (to turn into something later)
map('', '<up>',    '<nop>')
map('', '<down>',  '<nop>')
map('', '<left>',  '<nop>')
map('', '<right>', '<nop>')

-- Buffer movement
map('n', '<C-p>', ':bprev<cr>')
map('n', '<C-n>', ':bnext<cr>')

-- Yeet
map("n", "<leader>y", function () require("yeet").list_cmd() end, { desc = "List Yeet cmds"})

map("n", "<leader>lc", "<cmd>!xelatex %<cr>", { desc = "Compile LaTeX with XeLaTeX" })
map("n", "<leader>lz", "<cmd>!zathura main.pdf &<cr>", { desc = "Open 'main.pdf' in Zathura" })
map("n", "<leader>lw", "<cmd>!texcount %<cr>", { desc = "Get word count of document" })

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

-- harpoon2: electric boogaloo
map("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add buffer to Harpoon" })
map("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpon Menu" })
map("n", "<A-q>", function() harpoon:list():select(1) end, { desc = "Access Harpoon buffer 1" })
map("n", "<A-w>", function() harpoon:list():select(2) end, { desc = "Access Harpoon buffer 2" })
map("n", "<A-e>", function() harpoon:list():select(3) end, { desc = "Access Harpoon buffer 3" })
map("n", "<A-r>", function() harpoon:list():select(4) end, { desc = "Access Harpoon buffer 4" })

harpoon:extend({
  UI_CREATE = function(cx)
    vim.keymap.set("n", "<C-v>", function()
      harpoon.ui:select_menu_item({ vsplit = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-x>", function()
      harpoon.ui:select_menu_item({ split = true })
    end, { buffer = cx.bufnr })
  end,
})

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
map("n", "<leader>fs", require('telescope').extensions.luasnip.luasnip, { desc = "Opens Luasnip extension" })


map("n", "<leader>qq", vim.cmd.bd, { desc = "Close buffer" })
