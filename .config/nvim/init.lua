vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("globals")
require("config.opts")
require("config.lazy")
require("config.remap")

vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

require('mini.ai').setup()
require('mini.trailspace').setup()
