local bufferline = require("bufferline")
require("bufferline").setup({
  options = {
    mode = "buffers",
    style_preset = bufferline.style_preset.minimal,
    numbers = "none",
    separator_style = "thin"
  }
})
