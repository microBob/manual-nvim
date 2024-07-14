return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "mdformat" },
		},
		format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
	},
}
