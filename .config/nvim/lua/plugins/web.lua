return {
  {
    "ngtuonghy/live-server-nvim",
    event = "VeryLazy",
    build = ":LiveServerInstall",
    custom = {
      "--port=8080",
      "--no-css-inject",
    },
    serverPath = vim.fn.stdpath("data") .. "/live-server/", --default
    open = "folder", -- folder|cwd     --default

    config = function()
      require("live-server-nvim").setup{}
    end
  },
}
