vim.g.mapleader = vim.keycode("<space>")
vim.g.maplocalleader = ","

require("lucas.lazy")
require("lucas.config")

P = function(v)
	print(vim.inspect(v))
	return v
end
