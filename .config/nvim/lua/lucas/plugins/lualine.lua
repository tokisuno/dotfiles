return {
  {
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
          component_separators = { left = '', right = ''},
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
              fmt = function()
                return mode_map[vim.api.nvim_get_mode().mode] or vim.api.nvim_get_mode().mode
              end
            },
          },
          lualine_b = {
            {
              'buffers',
              show_filename_only = true,   -- Shows shortened relative path when set to false.
              hide_filename_extension = false,   -- Hide filename extension when set to true.
              show_modified_status = true, -- Shows indicator when the buffer is modified.

              mode = 0, -- 0: Shows buffer name
              -- 1: Shows buffer index
              -- 2: Shows buffer name + buffer index
              -- 3: Shows buffer number
              -- 4: Shows buffer name + buffer number

              max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
              use_mode_colors = true,
              buffers_color = {
                -- Same values as the general color option can be used here.
                active = 'lualine_b_normal',     -- Color for active buffer.
                inactive = 'lualine_b_inactive', -- Color for inactive buffer.
              },
              symbols = {
                modified = ' ●',      -- Text to show when the buffer is modified
                alternate_file = '#', -- Text to show to identify the alternate file
                directory =  '',     -- Text to show when the buffer is a directory
              },
            }
          },
          lualine_c = {'diff', 'diagnostics'},
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
}
