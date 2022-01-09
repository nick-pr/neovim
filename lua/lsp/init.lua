local lsp_servers = {
    -- 'lsp.tsserver',
    -- 'lsp.eslint',
    -- 'lsp.rls',
    -- 'lsp.rust-tools'
}
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = false,
  update_in_insert = false,
  severity_sort = false,
})

for _,module in ipairs(lsp_servers) do
    local ok, err = pcall(require,module)
    if not ok then
        error('Something went wrong loading'..module..'\n'..err)
    end
end
