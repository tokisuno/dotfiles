return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  opts = {
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    keymap = {
      preset = "none",
      ["<C-n>"] = { "select_next" },
      ["<C-p>"] = { "select_prev" },
      ["<C-y>"] = { "select_and_accept" },
      ["<C-b>"] = { "snippet_backward" },
      ["<C-f>"] = { "snippet_forward" },
      ["<Tab>"] = {},
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}

