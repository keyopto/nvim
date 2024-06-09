local notify = require("notify")

notify.setup({
	background_colour = "#000000",
})

vim.notify = notify

vim.keymap.set("n", "<leader>nh", "<cmd>Telescope notify<CR>")
vim.keymap.set("n", "<leader>nd", function()
	notify.dismiss()
end)
