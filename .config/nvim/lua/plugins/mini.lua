return {
  {
    'echasnovski/mini.ai',
    version = false,
    config = function ()
      require("mini.ai").setup()
    end
  },
  {
    'echasnovski/mini.trailspace',
    version = false,
    config = function ()
      require("mini.trailspace").setup()
    end
  },
  {
    'echasnovski/mini.cursorword',
    version = false,
    config = function ()
      require("mini.cursorword").setup()
    end
  },
}
