local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
	pattern = {
		"py",
	},
	callback = function()
		vim.cmd("setlocal tabstop=4 shiftwidth=4 softtabstop=4")
	end,
})

-- we're going for that linux kernel style frfr
autocmd("Filetype", {
  pattern = {
    "c",
  },
  callback = function ()
    vim.cmd("setlocal tabstob=8 shiftwidth=8 softtabstop=8")
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
