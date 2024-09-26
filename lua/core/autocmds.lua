vim.api.nvim_create_autocmd('BufEnter', {
    group = vim.api.nvim_create_augroup('autocom', { clear = true }),
    pattern = '*.md',
    callback = function()
        vim.api.nvim_command("setlocal spell spelllang=en_us")
    end,
})

-- vim.cmd('autocmd TermOpen * startinsert')
-- vim.cmd('autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")')
