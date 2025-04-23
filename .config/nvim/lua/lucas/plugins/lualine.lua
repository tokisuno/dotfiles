return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local mode_map = {
      n = "ノーマル",
      nt = "ノーマル",
      i = "挿入",
      o = "オペレータ待機",
      R = "置換",
      v = "ビジュアル",
      V = "ビジュアル",
      x = "ビジュアル",
      no = "コマンド",
      ["\22"] = "コマンド",
      t = "端末ジョブ",
      ['!'] = "コマンド",
      c = "コマンドライン",
      s = "選択"
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        -- component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
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
            color = { gui = 'bold' },
            fmt = function()
              return mode_map[vim.api.nvim_get_mode().mode] or vim.api.nvim_get_mode().mode
            end
          },
        },
        lualine_b = {'diagnostics', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
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
      tabline = {
        -- lualine_a = {'buffers'},
        -- lualine_b = {'branch'},
        -- lualine_c = {'filename'},
        -- lualine_x = {},
        -- lualine_y = {},
        -- lualine_z = {'tabs'},
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end
}
