return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
      require("bufferline").setup({
        options = {
          color_icons = false,
          mode = "buffers",
          themable = true,
          numbers = "none",
          separator_style = "thin",
          indicator = {
            style = 'underline'
          },
          buffer_close_icon = '󰅖',
          modified_icon = '● ',
          close_icon = ' ',
          left_trunc_marker = ' ',
          right_trunc_marker = ' ',
        }
      })
    end
  },
}
