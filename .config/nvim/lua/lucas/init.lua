vim.g.mapleader = vim.keycode("<space>")
vim.g.maplocalleader = ","

require("lucas.lazy")
require("lucas.config")

vim.cmd("colorscheme gruvbox")
vim.cmd("highlight! link SignColumn Normal")

P = function(v)
	print(vim.inspect(v))
	return v
end
