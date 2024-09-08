require("conform").setup({
	formatters_by_ft = {
		-- Use a sub-list to run only the first available formatter
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		lua = { { "stylua" } },
		go = { { "gofumpt" } },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
