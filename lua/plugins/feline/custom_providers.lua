local M = {}

M.cwd_parent_dir = function()
    return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
end

M.lsp_locations = function()
    return require("nvim-navic").get_location()
end

return M
