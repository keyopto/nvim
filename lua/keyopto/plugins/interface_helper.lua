return ({

    -- help to retrieve what keys are doing
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = false
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- terminal management
    {
        -- amongst your other plugins
        { 'akinsho/toggleterm.nvim', version = "*", config = true }
    },

    -- command line
    {
        'VonHeikemen/fine-cmdline.nvim',
        dependencies = {
            { 'MunifTanjim/nui.nvim' }
        }
    },

    {
        'VonHeikemen/searchbox.nvim',
        dependencies = {
            { 'MunifTanjim/nui.nvim' }
        }
    },

    {
        "Shatur/neovim-session-manager",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    {
        "folke/twilight.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    { 'rcarriga/nvim-notify' }
})
