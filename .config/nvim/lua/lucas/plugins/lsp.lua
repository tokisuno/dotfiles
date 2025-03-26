return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},
      {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    },
    config = function ()
      local lsp = require('lsp-zero').preset("recommended")
      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
      end)
      require('mason').setup({})
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
        init_options = {
          formatter = 'standard',
          linters = { 'standard' }
        }
      })
      lsp.set_preferences({
        suggest_lsp_servers = false,
        sign_icons = {
          error = 'E',
          warn = 'W',
          hint = 'H',
          info = 'I'
        }
      })
      lsp.on_attach(function(client, bufnr)
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-s>", function() vim.lsp.buf.signature_help() end, opts)
      end)
      lsp.setup()
    end
  },
}
