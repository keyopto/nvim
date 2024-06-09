return {

	-- telescope -> how to go to every file wi
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- navigate between buffers
	{
		"theprimeagen/harpoon",
	},

	-- to see the tree organization of the repository
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"nvim-neo-tree/neo-tree.nvim",
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},

	-- {
	--     "nvim-neo-tree/neo-tree.nvim",
	--     branch = "v3.x",
	--     dependencies = {
	--         "nvim-lua/plenary.nvim",
	--         "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	--         "MunifTanjim/nui.nvim",
	--         -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	--     }
	-- }
}
