vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lucas.lazy")
require("lucas.config")
-- require("lucas.opts")
-- require("lucas.remap")
-- require("lucas.autocmd")

P = function (v)
  print(vim.inspect(v))
  return v
end
