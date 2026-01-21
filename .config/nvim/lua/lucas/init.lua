require("lucas.lazy")
require("lucas.remap")

vim.g.mapleader = vim.keycode("<space>")
vim.g.maplocalleader = ","

-- # OPTS
vim.o.background = "light"
vim.cmd("colorscheme gruvbox")

vim.o.conceallevel = 0
vim.o.guicursor = ""
vim.o.mouse = "a"
vim.o.termguicolors = true
vim.g.have_nerd_font = true
vim.o.winborder = "bold"

vim.opt.wildmode = "list:longest"
vim.opt.wildignore = { "*.docx", "*.jpg", "*.png", "*.gif", "*.pdf", "*.pyc", "*.exe", "*.flv", "*.img", "*.xlsx" }

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "black" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "grey" })
vim.cmd("highlight! link SignColumn Normal")

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "E",
			[vim.diagnostic.severity.WARN] = "W",
			[vim.diagnostic.severity.INFO] = "I",
			[vim.diagnostic.severity.HINT] = "H",
		},
		numhl = {
			[vim.diagnostic.severity.WARN] = "WarningMsg",
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.INFO] = "DiagnosticInfo",
			[vim.diagnostic.severity.HINT] = "DiagnosticHint",
		},
	},
  virtual_text = false,
	update_in_insert = false,
	underline = true,
	severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

vim.o.nu = true
vim.o.relativenumber = true
vim.o.numberwidth = 3
vim.o.signcolumn = "yes:1"
vim.o.statuscolumn = "%s%l "

vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.isfname:append("@-@")

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.smartindent = true
vim.o.breakindent = true
vim.o.smartcase = true

vim.o.cursorline = true
vim.o.updatetime = 50
vim.o.scrolloff = 10
vim.o.wrap = true
vim.o.linebreak = true
vim.o.colorcolumn = "120"
vim.o.inccommand = "split"
vim.o.ttimeoutlen = 50
vim.o.foldmethod = "manual"
vim.o.foldlevel = 999

vim.o.showmode = true
vim.o.showmatch = true

-- vim.cmd("set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20")
vim.opt.guicursor = { "n-v-c-sm:block", "i-ci-ve:ver25", "r-cr-o:hor20" }

-- # AUTOCMDS
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
	pattern = {
		"py",
	},
	callback = function()
		vim.cmd("setlocal tabstop=4 shiftwidth=4 softtabstop=4")
	end,
})

autocmd("BufWritePre", {
	pattern = { "*" },
	callback = function(ev)
		save_cursor = vim.fn.getpos(".")
		vim.cmd([[%s/\s\+$//e]])
		vim.fn.setpos(".", save_cursor)
	end,
})

autocmd("CursorMoved", {
	group = vim.api.nvim_create_augroup("auto-hlsearch", { clear = true }),
	callback = function()
		if vim.v.hlsearch == 1 and vim.fn.searchcount().exact_match == 0 then
			vim.schedule(function()
				vim.cmd.nohlsearch()
			end)
		end
	end,
})

-- flash highlight when yanking
autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
	pattern = "*",
})

P = function(v)
	print(vim.inspect(v))
	return v
end
