return {
  -- {'xuhdev/vim-latex-live-preview', ft = {"tex"}},
  -- might just remove vimtex and use my own functions instead
  -- vimtex is really heavy...
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    opts = {},
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*"
  },
  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        backdrop = 1,
        width = 80, -- width of the Zen window
        height = 0.95, -- height of the Zen window
        options = {
          signcolumn = "no", -- disable signcolumn
          cursorcolumn = false, -- disable cursor column
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
          laststatus = 0,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        todo = { enabled = false },
      },
    }
  },
  {
    "zk-org/zk-nvim",
  },
}
