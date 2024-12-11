return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {
      debounce = 100,
      indent = {
        char = "┊",
        tab_char = "┊",
        smart_indent_cap = true,
      },
      whitespace = {
        remove_blankline_trail = true,
      },
    }
  },
}
