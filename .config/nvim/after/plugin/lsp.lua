local lsp = require('lsp-zero').preset("recommended")
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'gopls',
    'lua_ls',
    'pyright',
    'emmet_ls',
    'clangd',
    'vimls',
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
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set("n", "gT", function() vim.lsp.buf.type_definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.jump({count =  1, float = true}) end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.jump({count = -1, float = true}) end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-s>", function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()
