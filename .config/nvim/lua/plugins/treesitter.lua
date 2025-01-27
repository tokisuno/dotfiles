return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function ()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          "c",
          "cpp",
          "css",
          "gitignore",
          "html",
          "javascript",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "rust",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "yaml",
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end
  },
}
