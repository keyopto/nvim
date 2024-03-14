noice = require('noice')

vim.keymap.set("n", "<C-l>", function()
    noice.cmd("dismiss")
end)

vim.keymap.set("n", "<leader>nl", function()
    noice.cmd("last")
end)

vim.keymap.set("n", "<leader>nh", function()
    noice.cmd("history")
end)
