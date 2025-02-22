return {
  {
    'stevearc/conform.nvim',
    config = function ()
      require('conform').setup({
        formatters_by_ft = {
          lua = { 'stylua' },
          python = { 'ruff' },
          go = { 'gofmt' }
        }
      })
    end
  }
}
