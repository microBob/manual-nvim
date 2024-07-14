-- Interface options.
vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- Neovide config.
if vim.g.neovide then
	-- Interface.
	vim.o.guifont = "JetBrainsMono NF"
	vim.g.neovide_theme = "auto"

	-- Start in home.
	if vim.fn.getcwd() == "/" then
		vim.api.nvim_set_current_dir(vim.fn.expand("~"))
	end
end

-- General editor options.
vim.opt.autowrite = true
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.conceallevel = 2
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = true
vim.opt.smoothscroll = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.g.markdown_recommended_style = 0
