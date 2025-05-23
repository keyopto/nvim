return {
  -- lsp
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "WhoIsSethDaniel/mason-tool-installer.nvim" },
  {
    "neovim/nvim-lspconfig"
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
  },

  { 'nvim-java/nvim-java' },

  {
    "stevearc/conform.nvim",
    opts = {},
  },
  -- { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
  -- { 'hrsh7th/cmp-nvim-lsp' },
  -- { 'hrsh7th/nvim-cmp' },
  -- { 'saadparwaiz1/cmp_luasnip' },
  { "L3MON4D3/LuaSnip" },

  { "folke/neodev.nvim",                   opts = {} },

  -- see the changes that have been made during time
  { "mbbill/undotree" },

  -- git functionnalities
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim" },

  --indent-line
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
