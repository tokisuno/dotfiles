require("lucas.config.autocmd")
require("lucas.config.opts")
require("lucas.config.remap")
require("lucas.config.cursorline").setup({
  cursorline = {
    enable = true,
    timeout = 500,
    number = false
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
})
