return {
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    },
    config = function ()
      local lsp = require('lsp-zero').preset("recommended")
      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
      end)
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'gopls',
          'lua_ls',
          'emmet_ls',
          'clangd',
          'marksman',
          'rust_analyzer',
        },
        handlers = {
          lsp.default_setup,
        },
      })
      local lspconfig = require('lspconfig')
      lspconfig.emmet_ls.setup{}
      lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
      lspconfig.ruby_lsp.setup({
        cmd = { 'ruby-lsp' },
        filetypes = { 'ruby', 'eruby' },
        root_dir = lspconfig.util.root_pattern('Gemfile', '.git'),
        single_file_support = true,
        init_options = {
          formatter = 'standard',
          linters = { 'standard' },
          document_highlights = true,
          document_symbols = true,
          signature_help = true,
        }
      })
      lsp.setup()
    end
  },
}
