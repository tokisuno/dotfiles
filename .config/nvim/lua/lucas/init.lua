vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lucas.lazy")
require("lucas.remap")
require("lucas.opts")
require("lucas.autocmd")
require("lucas.globals")

-- fucking hate this
-- vim.keymap.del("i", "<Tab>")
-- vim.keymap.del("i", "<S-Tab>")
