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
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.g.markdown_recommended_style = 0

-- Interface options.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load plugin manager.
require("config.lazy")
