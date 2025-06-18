return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- add color to the files (respecting langages)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}
