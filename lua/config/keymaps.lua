-- Telescope.
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Neo-tree.
vim.keymap.set('n', '\\', '<cmd>Neotree filesystem toggle reveal left<cr>', {})
