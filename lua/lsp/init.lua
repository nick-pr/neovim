local lsp_servers = {
    'lsp.tsserver',
    'lsp.eslint'
}

for _,module in ipairs(lsp_servers) do
    local ok, err = pcall(require,module)
    if not ok then
        error('Something went wrong loading'..module..'\n'..err)
    end
end
