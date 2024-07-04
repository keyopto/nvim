return {

	-- make the interface a bit more beautiful
	{ "vim-airline/vim-airline" },

	-- rose-pine theme color
	{ "rose-pine/neovim", as = "rose-pine" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "rebelot/kanagawa.nvim" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

	-- add color to the files (respecting langages)
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}
