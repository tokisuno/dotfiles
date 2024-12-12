return {
  {
    'nvim-lualine/lualine.nvim',
    config = function ()
      local mode_map = {
        n = "(ᴗ_ ᴗ。)",
        nt = "(ᴗ_ ᴗ。)",
        i = "(•̀ - •́ )",
        R = "( •̯́ ₃ •̯̀)",
        v = "(⊙ _ ⊙ )",
        V = "(⊙ _ ⊙ )!!",
        no = "Σ(°△°ꪱꪱꪱ)",
        ["\22"] = "(⊙ _ ⊙ )",
        t = "(⌐■_■)",
        ['!'] = "Σ(°△°ꪱꪱꪱ)",
        c = "Σ(°△°ꪱꪱꪱ)",
        s = "SUB"
      }
      require('lualine').setup({
        options = {
          icons_enabled = false,
          theme = 'gruvbox_dark',
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
          lualine_a = {
            {
              'mode',
              icons_enabled = true,
              fmt = function ()
                return mode_map[vim.api.nvim_get_mode().mode] or vim.api.nvim_get_mode().mode
              end
            }
          },
          lualine_b = {
            {
              'buffers',
              mode = 0,
              show_filename_only = true,
              show_modified_status = true,
            },
          },
          lualine_c = {},
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


