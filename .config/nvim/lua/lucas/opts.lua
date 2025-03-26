local set = vim.opt

set.background = "dark"
vim.cmd.colorscheme("gruvbox")

set.conceallevel = 0
set.cursorline = true
set.guicursor = ""
set.mouse = "a"
set.termguicolors = true
vim.g.have_nerd_font = true

set.wildmode = "list:longest"
set.wildignore = { "*.docx", "*.jpg", "*.png", "*.gif", "*.pdf", "*.pyc", "*.exe", "*.flv", "*.img", "*.xlsx" }

vim.diagnostic.config({
	virtual_text = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
		numhl = {
			[vim.diagnostic.severity.WARN] = "WarningMsg",
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.INFO] = "DiagnosticInfo",
			[vim.diagnostic.severity.HINT] = "DiagnosticHint",
		},
	},
	update_in_insert = false,
	underline = true,
	severity_sort = true,
})

set.nu = true
set.relativenumber = true
set.numberwidth=3
set.signcolumn="yes:1"
set.statuscolumn="%l %s"

vim.o.backup = false
set.swapfile = false
set.undofile = true
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.isfname:append("@-@")

set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.softtabstop = 2
set.smartindent = true
set.breakindent = true
set.smartcase = true

set.updatetime = 50
set.scrolloff = 10
set.wrap = true
set.linebreak = true
set.colorcolumn = "120"
set.ignorecase = true
set.inccommand = "split"
set.ttimeoutlen = 50
set.foldmethod = "manual"
set.foldlevel = 999

set.showmode = true
set.showmatch = true

vim.cmd("set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20")
