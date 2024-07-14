return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		term_colors = true,
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
