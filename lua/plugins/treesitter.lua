return {
	"nvim-treesitter/nvim-treesitter",
	version = "*",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"lua",
				"nix",
				"markdown",

				"gitcommit",
				"git_rebase",
				"diff",
				"gitignore",
				"gitattributes",
				"git_config",
			},
			highlight = { enable = true },
			indent = { enalbe = true },
		})
	end,
}
