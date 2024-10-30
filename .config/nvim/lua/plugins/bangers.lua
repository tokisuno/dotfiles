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
}
