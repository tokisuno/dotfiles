return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require("leetcode").setup({
        arg = "leetcode.nvim"
      })
    end
  }
}
