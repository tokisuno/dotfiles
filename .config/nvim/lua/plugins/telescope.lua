return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'sharkdp/fd',
    },
    version = '0.1.5',
    config = function(_, opts)
      require('telescope').setup(opts)
    end
  },
}
