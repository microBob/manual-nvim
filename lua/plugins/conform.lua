return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "mdformat" },
			nix = { "nixpkgs-fmt" },
		},
		format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
	},
}
