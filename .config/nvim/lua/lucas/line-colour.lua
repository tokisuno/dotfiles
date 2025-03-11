-- trying to make something to change CursorLine colour when im in insert mode

local mode = vim.api.nvim_get_mode()["mode"]
local a = vim.api.nvim_get_hl(0, { name = "CursorLine" })
local base = string.format("%x", a['bg'])

if mode == 'n' then
  print(base)
end
