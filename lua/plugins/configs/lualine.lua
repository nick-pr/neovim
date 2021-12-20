local colors = require('colors.themes.tokyonight')
local opts = {
    padding = 1,
}
local componets = {
    branch = {
        'branch',
        color = {
            fg=colors.fg,
            bg=colors.bg,
        },
        padding=opts.padding
    },
    diff = {
        'diff',
        color = {
            bg=colors.bg,
        },
        symbols = {
            added = ' ',
            modified = ' ',
            removed = ' ',
        }
    },
    filename = {
        'filename',
        color = {
            bg = colors.none,
            fg = colors.fg,
        }
    }
}
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {componets.branch,componets.diff},
    lualine_c = {componets.filename},
    lualine_x = {{'filetype'}},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
