local M = { "hrsh7th/nvim-cmp" }

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

M.config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    vim.opt.completeopt = { "menu", "menuone", "noselect" }

    local opts = {
        formatting = {
            format = function(_, vim_item)
                vim_item.menu = ""
                return vim_item
            end,
        },
        window = {
            -- completion = cmp.config.window.bordered({ border = {"┌","─","┐","│","┘","─","└","│"}}),
            completion = cmp.config.window.bordered({ border = "single" }),
            documentation = cmp.config.window.bordered(),
        },
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<C-CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Insert,
                select = true,
            }),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
        }),
    }

    cmp.setup(opts)
end

M.dependencies = { "hrsh7th/cmp-nvim-lsp" }

return M
