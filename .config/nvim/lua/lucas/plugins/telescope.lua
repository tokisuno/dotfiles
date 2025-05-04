return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    require('telescope').setup({
      defaults = {
        layout_config = {
          vertical = {
            width = 0.6,
            prompt_position = "top"
          },
        },
      }
    })
  end
}
