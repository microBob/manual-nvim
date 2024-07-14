return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		linters_by_ft = {
			lua = { "luacheck" },
			markdown = { "vale" },
			nix = { "nix" },
		},
	},
	config = function()
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
