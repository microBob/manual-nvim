return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "nix", "vim" },
      highlight = { enable = true },
      indent = { enalbe = true },
    })
  end
}
