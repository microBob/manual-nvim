-- Telescope.
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- Neo-tree.
vim.keymap.set("n", "\\", "<cmd>Neotree filesystem toggle reveal left<cr>", {})

-- LSP.
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
	end,
})

-- Formatting.
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, {})

vim.keymap.set("n", "<leader>l", function()
	require("lint").try_lint()
end, {})

-- Terminal.
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", {})
vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", {})
