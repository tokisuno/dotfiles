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
  {
    'echasnovski/mini.ai',
    version = false,
    config = function ()
      require('mini.ai').setup({
        custom_textobjects = nil,
        mappings = {
          around = 'a',
          inside = 'i',
          around_next = 'an',
          inside_next = 'in',
          around_last = 'al',
          inside_last = 'il',
          goto_left = 'g[',
          goto_right = 'g]',
        },
        n_lines = 50,
        search_method = 'cover_or_next',
        silent = false,
      })
    end
  },
  {
    'echasnovski/mini.indentscope',
    version = false,
    config = function ()
      require('mini.indentscope').setup({
        mappings = {
          object_scope = 'ii',
          object_scope_with_border = 'ai',
          goto_top = '[i',
          goto_bottom = ']i',
        },
      })
    end
  },
}
