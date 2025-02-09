return {
  {
    'echasnovski/mini.move',
    version = false,
    config = function ()
      require('mini.move').setup({
        mappings = {
          left = '<left>',
          right = '<right>',
          down = '<down>',
          up = '<up>',

          -- Move current line in Normal mode
          line_left = '<left>',
          line_right = '<right>',
          line_down = '<down>',
          line_up = '<up>',
        }
      })
    end
  },
}
