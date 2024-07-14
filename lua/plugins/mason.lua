return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"nil_ls",
				"marksman",
				"vale",
				"mdformat",
				"stylua",
				"luacheck",
				"nixpkgs-fmt",
			},
			auto_update = true,
		},
	},
}
