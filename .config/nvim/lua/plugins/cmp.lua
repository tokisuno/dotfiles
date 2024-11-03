return {
  {
    'hrsh7th/nvim-cmp',
    config = function ()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      cmp.setup({
        experimental = { ghost_text = false },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs( 4),
          ['<C-Space>'] = cmp.mapping.complete {},
          ['<C-y>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'neorg' },
          { name = 'path' },
          { name = 'buffer' },
        },

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
    end
  },
  {'saadparwaiz1/cmp_luasnip'},
  {'rafamadriz/friendly-snippets'},
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    version = "v2.*",
    build = "make install_jsregexp",
    config = function ()
      require('luasnip.loaders.from_lua').load({paths = "./lua/snippets"})
    end
  },
}
