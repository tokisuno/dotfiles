return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		disable_in_visualblock = false,
		disable_in_replace_mode = true,
		ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
		map_cr = true,
		map_bs = true,
		map_c_h = false,
		map_c_w = false,
	},
}
