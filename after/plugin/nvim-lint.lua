local lint = require('lint')

lint.linters_by_ft = {
    lua = { 'luacheck' },
    typescript = { 'eslint_d', },
    typescriptreact = { 'eslint_d', }
}

vim.keymap.set('n', '<leader>ll', function()
    lint.try_lint();
end)
