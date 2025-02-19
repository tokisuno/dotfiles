return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = {
      {
        "echasnovski/mini.icons",
        opts = {
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
          constrain_cursor = "names",
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
        }
      }
    },
    lazy = false,
  }
}
