return {
  {'echasnovski/mini.nvim', version = false},
  {'m4xshen/hardtime.nvim'},
  {'nvim-lua/plenary.nvim'},
  {'lewis6991/gitsigns.nvim'},
  {'HiPhish/rainbow-delimiters.nvim'},
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require('colorizer').setup()
    end
  },
  {'numToStr/Comment.nvim'},
  {'xiyaowong/nvim-cursorword'},
  {'folke/todo-comments.nvim'},
  {
    'lukas-reineke/indent-blankline.nvim',
    dependencies = { "nmac427/guess-indent.nvim" },
    config = function ()
      require("ibl").setup({
        debounce = 100,
        indent = {
          char = "┊",
          tab_char = "┊",
          smart_indent_cap = true,
        },
        whitespace = {
          remove_blankline_trail = true,
        },
      })
      require("guess-indent").setup()
    end
  },
  {'booperlv/nvim-gomove'},
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function ()
      require("nvim-autopairs").setup({
        disable_in_visualblock = false,
        disable_in_replace_mode = true,
        map_cr = true,
        map_bs = true,
        map_c_h = false,
        map_c_w = false,
      })
    end
  },
}
