return {
  {
    'stevearc/oil.nvim',
    config = function ()
      require('oil').setup({
        default_file_explorer = true,
        columns = {
          "icon"
        },
        win_options = {
          wrap = false,
          signcolumn = "no",
          cursorcolumn = false,
          foldcolumn = "0",
          spell = false,
          list = false,
          conceallevel = 3,
          concealcursor = "nvic",
        },
        constrain_cursor = "editable",
        view_options = {
          show_hidden = true,
          is_hidden_file = function(name, bufnr)
            local m = name:match("^%.")
            return m ~= nil
          end,
          is_always_hidden = function(name, bufnr)
            return false
          end,
        },
      })
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {}  } },
    lazy = false
  }
}

