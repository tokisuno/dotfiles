return {
  {
    'nvim-lualine/lualine.nvim',
    config = function ()
      require('lualine').setup({
        options = {
          icons_enabled = false,
          theme = 'gruvbox-material',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'filetype'},
          lualine_c = {'filename'},
          lualine_x = {
            'branch',
            {
              'diagnostics',
              symbols = {
                error = ' ',
                warn = ' ',
                info = ' '
              },
            }
          },
          lualine_y = {
            'progress',
            {
              'diff',
              symbols = {
                added = ' ',
                modified = '󰝤 ',
                removed = ' '
              },
            },
          },
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      })
    end
  },
}
