vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<A-h>", [[<Cmd>wincmd h<CR>]])
vim.keymap.set("n", "<A-j>", [[<Cmd>wincmd j<CR>]])
vim.keymap.set("n", "<A-k>", [[<Cmd>wincmd k<CR>]])
vim.keymap.set("n", "<A-l>", [[<Cmd>wincmd l<CR>]])

vim.keymap.set("n", "<leader>sv", "<CMD>vsplit<CR>")
vim.keymap.set("n", "<leader>sh", "<CMD>split<CR>")

vim.keymap.set("n", "<leader>q", "<CMD>q<CR>")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<leader>tn", "<cmd>tab split<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<leader>ta", "<cmd>tabprevious<CR>")

vim.keymap.set("v", "<Tab>", ">")
vim.keymap.set("v", "<S-Tab>", "<")

vim.keymap.set("n", "<leader>wt", "<cmd>set wrap!<CR>")

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>od", function()
	vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end)

vim.keymap.set("n", "<leader>ih", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)

vim.keymap.set("v", "<leader>fw", '"ny/<C-R>n')

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "<leader>gp", vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "<leader>gn", vim.diagnostic.goto_next, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

vim.keymap.set("n", "<leader>qq", "<cmd>cclose<CR>", {})
vim.keymap.set("n", "<leader>qn", "<cmd>cnext<CR>", {})
vim.keymap.set("n", "<leader>qp", "<cmd>cprev<CR>", {})
