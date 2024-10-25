return {
  -- {'xuhdev/vim-latex-live-preview', ft = {"tex"}},
  -- might just remove vimtex and use my own functions instead
  -- vimtex is really heavy...
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    opts = {},
  },
  -- {
  --   'lervag/vimtex',
  --   ft = {"tex"},
  --   config = function()
  --     vim.g.tex_flavor = 'latex'
  --     vim.g.vimtex_compiler_latexmk_engines = {['_'] = '-xelatex'}
  --     vim.g.vimtex_view_method = 'zathura'
  --     vim.g.vimtex_view_general_viewer = 'zathura'
  --     vim.g.vimtex_view_general_options = '--unique file:@pdf#src@line@tex'
  --     vim.g.vimtex_compiler_method = 'latexmk'
  --     vim.g.vimtex_compiler_latexmk = {
  --       options = {
  --         '-shell-escape',
  --       },
  --     }
  --     vim.g.vimtex_view_automatic = 1
  --   end
  -- },
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
  }
}
