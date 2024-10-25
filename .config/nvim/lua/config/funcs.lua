local M = {}

M.toggle_signs = function ()
  if vim.o.signcolumn == "no" then
    vim.o.signcolumn = "yes:1"
    print("signs on")
  else
    vim.o.signcolumn = "no"
    print("signs off")
  end
end


return M
