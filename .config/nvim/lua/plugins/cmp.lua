return {
  {
    'saghen/blink.cmp',
    version = 'v0.*',
    dependencies = 'L3MON4D3/LuaSnip',
    opts = {
      snippets = {
        expand = function(snippet) require('luasnip').lsp_expand(snippet) end,
        active = function(filter)
          if filter and filter.direction then
            return require('luasnip').jumpable(filter.direction)
          end
          return require('luasnip').in_snippet()
        end,
        jump = function(direction) require('luasnip').jump(direction) end,
      },
      apperance = {
        use_nvim_cmp_as_default = true
      },
      keymap = {
        preset = 'default',
        ['<C-n>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback' },
        ['<C-y>'] = { 'select_and_accept' },
        ['<C-r>'] = { 'snippet_forward', 'fallback' },
        ['<C-e>'] = { 'snippet_backward', 'fallback' },
      },
      sources = {
        default = { 'lsp', 'path', 'luasnip', 'buffer' },
      },
    }
  }
}
