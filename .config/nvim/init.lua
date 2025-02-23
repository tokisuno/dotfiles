vim.g.mapleader      = " "
vim.g.maplocalleader = ","

require("config")

local set     = vim.opt
local autocmd = vim.api.nvim_create_autocmd

vim.o.background     = "dark"
vim.cmd.colorscheme("gruvbox")
vim.g.have_nerd_font = true
set.termguicolors = true
set.guicursor     = ""
set.cursorline    = true

set.wildmode   = "list:longest"
set.wildignore = {'*.docx','*.jpg','*.png','*.gif','*.pdf','*.pyc','*.exe','*.flv','*.img','*.xlsx'}

vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = { " ", " ", " ", " " },
  },
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
})

set.nu             = true
set.relativenumber = true
set.signcolumn     = "number"

set.swapfile = false
vim.o.backup = false
set.undofile = true
set.undodir  = os.getenv("HOME") .. "/.vim/undodir"
set.isfname:append("@-@")
set.undofile = true

set.tabstop     = 4
set.shiftwidth  = 4
set.softtabstop = 4
set.smartindent = false
set.expandtab   = true

set.updatetime  = 50
set.scrolloff   = 10
set.wrap        = true
set.linebreak   = true
set.colorcolumn = "80"
set.ignorecase  = true
set.smartcase   = true
set.inccommand  = 'split'
set.breakindent = true
set.ttimeoutlen = 50
set.foldmethod  = "manual"
set.foldlevel   = 999

autocmd('FileType', {
    pattern = {
        'html',
        'css',
        'lua',
        'luajit',
        'rs',
        'rb'
    },
    callback = function()
        vim.cmd('setlocal tabstop=2 shiftwidth=2 softtabstop=2')
    end,
})

-- going to try replacing with confirm.nvim
autocmd("BufWritePre", {
    pattern = {"*"},
    callback = function(ev)
        save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- show --
set.showmode  = true
set.showmatch = true

-- misc --
set.mouse='a'
set.conceallevel=0
vim.cmd("set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20")
