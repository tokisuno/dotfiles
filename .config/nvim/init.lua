vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("config")

local set = vim.opt
local autocmd = vim.api.nvim_create_autocmd

vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")


vim.g.have_nerd_font = true

--# opts #--
set.termguicolors = true
set.guicursor = ""
set.cursorline = true

-- wildmenu --
set.wildmode = "list:longest"
set.wildignore = {'*.docx','*.jpg','*.png','*.gif','*.pdf','*.pyc','*.exe','*.flv','*.img','*.xlsx'}

-- number column --
set.nu = true
set.relativenumber = true
set.signcolumn = "number"

-- backups --
set.swapfile = false
vim.o.backup = false
set.undofile = true
set.undodir=os.getenv("HOME") .. "/.vim/undodir"
set.isfname:append("@-@")
set.undofile = true

-- formatting --
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.smartindent = false
set.expandtab = true

set.updatetime = 50
set.scrolloff = 10
set.wrap = true
set.linebreak = true
set.colorcolumn = "80"
set.ignorecase = true
set.smartcase = true
set.inccommand = 'split'
set.breakindent = true
set.ttimeoutlen = 50
set.foldmethod = "manual"
set.foldlevel = 999

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

autocmd("BufWritePre", {
    pattern = {"*"},
    callback = function(ev)
        save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

-- show --
set.showmode = true
set.showmatch = true

-- misc --
set.mouse='a'
set.conceallevel=0
vim.cmd("set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20")
