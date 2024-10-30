return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    config = function ()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {
            config = {
              icon_preset = 'basic'
            }
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                life = "~/Dropbox/neorg/life",
                notes = "~/Dropbox/neorg/notes",
                yt = "~/Dropbox/neorg/yt",
              },
              default_workspace = "life",
              use_popup = true,
            },
          },
          ["core.export"] = {},
          ["core.esupports.indent"] = {
            config = {
              indents = {
                _ = { indent = 0 },
                heading1 = { indent = 0 },
                heading2 = { indent = 2 },
                heading3 = { indent = 2 },
                heading4 = { indent = 2 },
                heading5 = { indent = 2 },
                heading6 = { indent = 2 },
                heading7 = { indent = 2 },
                heading8 = { indent = 2 },
              }
            },
            tweaks = {
              unordered_list1 = 0,
              unordered_list2 = 2,
            }
          },
          ["core.summary"] = {},
          ["core.text-objects"] = {},
        }
      })
    end
  },
}
