return {
  {
    'nvimdev/indentmini.nvim',
    config = function ()
      require("indentmini").setup()
      vim.cmd.highlight('IndentLine        guifg=#363636')
      vim.cmd.highlight('IndentLineCurrent guifg=#d79921')
    end

  }
}
