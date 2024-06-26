local toggleterm = require("toggleterm")

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-n>]],
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	persist_size = true,
})

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<A-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<A-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<A-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<A-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<A-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://*toggleterm#*  lua set_terminal_keymaps()")
