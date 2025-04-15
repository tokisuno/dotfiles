return {
  {
    'mawkler/modicator.nvim',
    after = 'gruvbox.nvim',
    setup = function ()
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    config = function ()
      require('modicator').setup({
        show_warnings = true,
        highlights = {
          defaults = {
            bold = false,
            italic = false,
          },
          use_cursorline_background = false,
        },
        integration = {
          lualine = {
            enabled = true,
            mode_section = nil,
            highlight = 'bg',
          },
        },
      })
    end
  }
}
