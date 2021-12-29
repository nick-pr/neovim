require("toggleterm").setup{
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true, 
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = '1',
    start_in_insert = true,
    insert_mappings = true, 
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = 'single',
        -- width = 20,
        -- height = 20,
        -- winblend = 3,
        highlights = {
            border = "Normal",
            -- background = "Normal",
        }
    }
}

