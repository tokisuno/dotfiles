return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'sharkdp/fd',
      "nvim-telescope/telescope-bibtex.nvim",
      "benfowler/telescope-luasnip.nvim",
      "jonarrien/telescope-cmdline.nvim"
    },
    version = '0.1.5',
    opts = {
      extensions = {
        bibtex = {
          -- Depth for the *.bib file
          depth = 2,
          custom_formats = {},
          format = '',
          global_files = {
            os.getenv("HOME") .. "/Dropbox/latex/bibs/latam.bib",
            os.getenv("HOME") .. "/Dropbox/latex/bibs/scitech_history.bib",
          },
          search_keys = { 'author', 'year', 'title' },
          citation_format = '{{author}} ({{year}}), {{title}}.',
          citation_trim_firstname = true,
          citation_max_auth = 2,
          context = false,
          context_fallback = true,
          wrap = false,
        },
        cmdline = {},
      },
    },
    config = function(_, opts)
      require('telescope').setup(opts)
      require("telescope").load_extension("bibtex")
      require("telescope").load_extension("cmdline")
    end
  },
}
