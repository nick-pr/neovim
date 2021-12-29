vim.cmd('autocmd TermOpen * startinsert')
vim.cmd('autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")')
