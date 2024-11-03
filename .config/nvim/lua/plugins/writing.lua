return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    opts = {},
  },
  {'3rd/image.nvim'},
  {'HakonHarnes/img-clip.nvim'},
  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        backdrop = 0.95,
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
    config = function ()
      require("zk").setup({
        picker = "telescope",
        lsp = {
          -- `config` is passed to `vim.lsp.start_client(config)`
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
            -- on_attach = ...
            -- etc, see `:h vim.lsp.start_client()`
          },
          -- automatically attach buffers in a zk notebook that match the given filetypes
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end
  },
}
