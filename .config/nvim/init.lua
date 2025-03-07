vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("config")

local set = vim.opt
local autocmd = vim.api.nvim_create_autocmd

vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")
vim.g.have_nerd_font = true
set.termguicolors = true
set.guicursor = ""
set.cursorline = true

set.wildmode   = "list:longest"
set.wildignore = {'*.docx','*.jpg','*.png','*.gif','*.pdf','*.pyc','*.exe','*.flv','*.img','*.xlsx'}

vim.diagnostic.config({
  virtual_text = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
    numhl = {
      [vim.diagnostic.severity.WARN] = 'WarningMsg',
      [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
      [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
      [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
    },
  },
  update_in_insert = false,
  underline = true,
  severity_sort = true,
})

set.nu = true
set.relativenumber = true
set.signcolumn = "number"

set.swapfile = false
vim.o.backup = false
set.undofile = true
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.isfname:append("@-@")

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.smartcase = true
set.smartindent = false
set.expandtab = true

set.updatetime = 50
set.scrolloff = 10
set.wrap = true
set.linebreak = true
set.colorcolumn = "80"
set.ignorecase = true
set.inccommand = 'split'
set.breakindent = true
set.ttimeoutlen = 50
set.foldmethod = "manual"
set.foldlevel = 999

autocmd('FileType', {
    pattern = {
      'py'
    },
    callback = function()
        vim.cmd('setlocal tabstop=4 shiftwidth=4 softtabstop=4')
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

autocmd('CursorMoved', {
  group = vim.api.nvim_create_augroup('auto-hlsearch', { clear = true }),
  callback = function ()
    if vim.v.hlsearch == 1 and vim.fn.searchcount().exact_match == 0 then
      vim.schedule(function () vim.cmd.nohlsearch() end)
    end
  end
})

-- flash highlight when yanking
autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
  pattern = '*',
})

-- show --
set.showmode  = true
set.showmatch = true

-- misc --
set.mouse='a'
set.conceallevel=0
vim.cmd("set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20")
