return {
  "hedyhli/outline.nvim",
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

    require("outline").setup({
      outline_window = {
        position = 'right',
        relative_width = true,
        width = 40,
        show_cursorline = true,
        hide_cursor = true
      },
    })
  end,
}
