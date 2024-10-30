return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
      local bufferline = require("bufferline")
      require("bufferline").setup({
        options = {
          mode = "buffers",
          style_preset = bufferline.style_preset.minimal,
          numbers = "none",
          separator_style = "thin"
        }
      })
    end
  },
}
