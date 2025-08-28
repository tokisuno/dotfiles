return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local mode_map = {
      ['n']    = 'NOR',
      ['no']   = 'OP',
      ['nov']  = 'OP',
      ['noV']  = 'OP',
      ['no�']  = 'OP',
      ['niI']  = 'NOR',
      ['niR']  = 'NOR',
      ['niV']  = 'NOR',
      ['nt']   = 'NOR',
      ['v']    = 'VIS',
      ['vs']   = 'VIS',
      ['V']    = 'VL',
      ['Vs']   = 'VL',
      ['�']    = 'VBL',
      ['�s']   = 'VBL',
      ['s']    = 'SEL',
      ['S']    = 'SL',
      ['�']    = 'SBL',
      ['i']    = 'INS',
      ['ic']   = 'INS',
      ['ix']   = 'INS',
      ['R']    = 'REP',
      ['Rc']   = 'REP',
      ['Rx']   = 'REP',
      ['Rv']   = 'VR',
      ['Rvc']  = 'VR',
      ['Rvx']  = 'VR',
      ['c']    = 'CMD',
      ['cv']   = 'EX',
      ['ce']   = 'EX',
      ['r']    = 'REP',
      ['rm']   = 'MORE',
      ['r?']   = 'Y?',
      ['!']    = 'SH',
      ['t']    = 'TERM',
    }
    -- local mode_map = {
      -- 	n = "ノーマル",
      -- 	nt = "ノーマル",
      -- 	i = "挿入",
      -- 	o = "オペレータ待機",
      -- 	R = "置換",
      -- 	v = "ビジュアル",
      -- 	V = "ビジュアル",
      -- 	x = "ビジュアル",
      -- 	no = "コマンド",
      -- 	["\22"] = "コマンド",
      -- 	t = "端末ジョブ",
      -- 	["!"] = "コマンド",
      -- 	c = "コマンドライン",
      -- 	s = "選択",
      -- }
      --
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "auto",
          component_separators = "|",
          -- component_separators = { left = '', right = ''},
          section_separators = { left = "", right = "" },
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
          },
        },
        sections = {
          lualine_a = {
            {
              "mode",
              fmt = function()
                return mode_map[vim.api.nvim_get_mode().mode] or vim.api.nvim_get_mode().mode
              end,
            },
          },
          lualine_b = { "diagnostics", "diff" },
          lualine_c = {
            {
              "filename",
              path = 1
            }
          },
          lualine_x = {  "branch", "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      })
    end,
  }
