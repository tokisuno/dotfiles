# tokisuno's Neovim Setup
Neovim 0.10+ configuration

# featuring...
- A lot of `mini.plugins` in `init.lua`
- Autocompletion with LuaSnips + mason-cmp
- LSP setup with lsp-zero

# structure
- `nvim/init.lua`
    - entry point for lua config files
- `nvim/after/ftplugin`
    - filetype specific configurations
- `nvim/lua/config/`
    - opts
    - remaps
    - lazy.nvim setup
- `nvim/lua/plugins/`
    - every single plugin i use
