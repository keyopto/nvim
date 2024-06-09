return {

	-- make the interface a bit more beautiful
	{ "vim-airline/vim-airline" },

	-- rose-pine theme color
	{ "rose-pine/neovim", as = "rose-pine" },

	-- add color to the files (respecting langages)
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}
