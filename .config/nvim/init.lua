vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("globals")
require("config.opts")
require("config.lazy")
require("config.remap")

vim.o.background = "dark"
vim.cmd("colorscheme rose-pine")

require('mini.ai').setup()
require('mini.comment').setup()
require('mini.cursorword').setup()
require('mini.hipatterns').setup()
require('mini.indentscope').setup()
require('mini.move').setup()
require('mini.pairs').setup()
require('mini.surround').setup()
require('mini.trailspace').setup()
