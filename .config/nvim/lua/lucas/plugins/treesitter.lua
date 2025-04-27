return {
  'nvim-treesitter/nvim-treesitter',
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
        "ruby",
        "rust",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "zig",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end
}
