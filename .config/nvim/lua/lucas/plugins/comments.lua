return {
  {
    'numToStr/Comment.nvim'
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "LudoPinelli/comment-box.nvim",
    config = function ()
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }
      -- Titles
      map({ "n", "v" }, "<Leader>cb", "<Cmd>CBccbox<CR>", opts)

      -- Named parts
      map({ "n", "v" }, "<Leader>ct", "<Cmd>CBllline<CR>", opts)

      -- Simple line
      map("n", "<Leader>cl", "<Cmd>CBline<CR>", opts)

      -- Marked comments
      map({ "n", "v" }, "<Leader>cm", "<Cmd>CBllbox14<CR>", opts)

      -- Removing a box is simple enough with the command (CBd), but if
      map({ "n", "v" }, "<Leader>cd", "<Cmd>CBd<CR>", opts)
    end
  }
}
