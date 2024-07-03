return {
	-- lsp
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ "neovim/nvim-lspconfig" },

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

	{ "mfussenegger/nvim-jdtls", ft = "java" },

	{
		"stevearc/conform.nvim",
		opts = {},
	},
	-- { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	-- { 'hrsh7th/cmp-nvim-lsp' },
	-- { 'hrsh7th/nvim-cmp' },
	-- { 'saadparwaiz1/cmp_luasnip' },
	{ "L3MON4D3/LuaSnip" },

	{ "folke/neodev.nvim", opts = {} },

	-- see the changes that have been made during time
	{ "mbbill/undotree" },

	-- git functionnalities
	{ "tpope/vim-fugitive" },
	{ "lewis6991/gitsigns.nvim" },

	-- see problems
	{
		"folke/trouble.nvim",
		branch = "dev", -- IMPORTANT!
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
		opts = {}, -- for default options, refer to the configuration section for custom setup.
	},
}
