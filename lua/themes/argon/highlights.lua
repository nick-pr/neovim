local p = require("themes.argon.palette")
local c = require("themes.argon.colors")

-- Highlight table that will used to apply the highlights
return {
    -- Core Highlights
    Normal = { fg = c.foreground, bg = c.background },
    SignColumn = { bg = c.cursor_line },
    LineNr = { fg = c.comment, bg = c.background },
    CursorLineNR = { fg = p.orange_300, bg = c.cursor_line },
    CursorLine = { bg = c.cursor_line },
    EndOfBuffer = { fg = c.background },
    Pmenu = { fg = c.overlay, bg = p.dark_1 },
    PmenuSel = { fg = p.orange_300, bg = p.dark_1 },
    StatusLine = { fg = c.FOREGROUND, bg = c.status_line_bg },

    Keyword = { fg = c.keyword, bold = false },
    Conditional = { link = "Keyword" },
    Repeat = { link = "Keyword" },

    String = { fg = c.string },
    Number = { fg = p.red_350 },
    Boolean = { link = "Number" },
    Type = { fg = c.type },
    Error = { fg = c.foreground, bg = p.red_300 },
    Special = { fg = p.orange_300 },
    Function = { fg = c.functions },
    Operator = { fg = c.operator },

    Todo = { fg = p.orange_300 },
    Include = { fg = c.import, bold = false },
    MatchParen = { fg = c.foreground, bg = c.background },
    VertSplit = { fg = c.status_line_bg, bg = c.background },
    FloatBorder = { fg = c.overlay },
    NormalFloat = { bg = c.background },
    Visual = { bg = c.visual },
    Search = { bg = p.dark_4 },
    Comment = { fg = c.comment },
    PreProc = { fg = p.orange_300 },
    MatchParen = { fg = p.other.yellow, bold = true },
    Folded = { bg = "#181820" },

    -- GitSigns
    GitSignsAdd = { fg = p.green_400, bg = c.background },
    GitSignsChange = { fg = p.amber_400, bg = c.background },
    GitSignsDelete = { fg = p.red_400, bg = c.background },

    -- Telescope
    TelescopeBorder = { fg = c.overlay, bg = c.float_bg },
    TelescopeNormal = { fg = c.overlay, bg = c.float_bg },

    -- Fzf-lua
    FzfLuaNormal = { link = "Normal" },
    -- FzfLuaCursor =      { fg = c.foreground, bg = c.float_bg },
    FzfLuaBorder = { fg = c.FOREGROUND, bg = c.BACKGROUND },
    -- FzfLuaCursorLine =  { bg = c.floatBg, fg = p.orange_300 },

    -- Treesitter
    ["@type"] = { link = "Type" },
    ["@type.definition"] = { fg = c.type, bold = false },
    ["@type.qualifier"] = { fg = p.emerald_300, bold = false },
    ["@keyword"] = { link = "Keyword" },
    ["@repeat"] = { link = "Repeat" },
    ["@conditional"] = { link = "Conditional" },
    ["@constructor"] = { fg = c.constructor },
    ["@constructor.lua"] = { link = "@punctuation.bracket" },
    ["@punctuation.bracket"] = { fg = c.punc_bracket },
    ["@punctuation.delimiter"] = { fg = c.punc_bracket },
    ["@tag.delimiter"] = { fg = c.overlay },
    ["@property"] = { fg = c.property },
    ["@tag.attribute"] = { link = "@property" },
    ["@field"] = { fg = c.field },
    ["@comment"] = { link = "Comment" },
    ["@tag"] = { fg = c.tag },
    ["@tag.attribute.svelte"] = { fg = p.sky_300 },
    ["@text.title.svelte"] = { link = "Normal" },
    ["@boolean"] = { link = "Boolean" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { fg = c.parameter },
    ["@variable"] = { fg = c.foreground },
    ["@variable.builtin"] = { link = "@number" },
    ["@constant.builtin"] = { link = "@function.macro" },
    ["@constant"] = { link = "Normal" },
    ["@number"] = { link = "Number" },
    ["@label"] = { fg = p.blue_300 },
    ["@function.macro"] = { fg = p.orange_250, bold = false },
    ["@exception"] = { fg = p.orange_300, bold = false },
    ["@function.builtin"] = { fg = p.orange_300, bold = false },
    ["@text.reference"] = { fg = c.functions },
    ["@module"] = { fg = p.red_300 },
    ["@field.rust"] = { fg = c.property },

    -- Treesitter (Rust)
    ["@storageclass.rust"] = { link = "@keyword" },

    -- Treesitter (Toml)
    ["@type.toml"] = { fg = p.orange_300 },
    ["@property.toml"] = { fg = c.foreground },

    -- Treesitter (Lua)
    ["@field.lua"] = { fg = c.property },

    -- Treesitter (HTML)
    ["@text.title"] = { fg = c.forground },
    ["@string.special.url"] = { fg = p.blue_300 },

    -- Treesitter (CSS)
    ["@number.css"] = { fg = c.forground },
    ["@string.css"] = { fg = c.forground },

    -- Treesitter (LSP)
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.namespace"] = { link = "@namespace" },

    -- LSP
    DiagnosticSignHint = { fg = p.blue_400, bg = c.status_line_bg },
    DiagnosticSignWarn = { fg = p.orange_300, bg = c.status_line_bg },
    DiagnosticSignError = { fg = p.red_500, bg = c.status_line_bg },

    --Oil
    OilDir = { fg = p.blue_300, bold = true },

    -- Nvim-tree
    NvimTreeNormal = { bg = c.float_bg },
    NvimTreeFolderIcon = { fg = p.blue_300 },
    NvimTreeFolderName = { fg = p.blue_300 },
    NvimTreeRootFolder = { fg = p.neutral_400 },
    NvimTreeOpenedFolderName = { fg = p.orange_300 },
    NvimTreeOpenedFile = { fg = c.foreground },

    -- Statusbar and Winbar
    Statuslinetest = { bg = p.blue_300 },
    FileInfoComponent = { fg = p.foreground, bold = true },

    -- ViModeComponentNormal = { bg = p.orange_300, fg = c.background ,bold = true },
    -- ViModeComponentVisual = { bg = p.purple_300, fg = c.background,  bold = true },
    -- ViModeComponentVisualLine = { bg = p.purple_300, fg = c.background, bold = true },
    -- ViModeComponentInsert = { bg = p.green_300, fg = c.background, bold = true },
    -- ViModeComponentCmd = { fg = p.red_300, bg = c.status_line_bg, bold = true },

    ViModeComponentNormal = { fg = c.status_line_bg, bg = p.orange_300, bold = true },
    ViModeComponentVisual = { fg = c.status_line_bg, bg = p.purple_300, bold = true },
    ViModeComponentVisualLine = { fg = c.status_line_bg, bg = p.purple_300, bold = true },
    ViModeComponentVisualBlock = { fg = c.status_line_bg, bg = p.purple_300, bold = true },
    ViModeComponentInsert = { fg = c.status_line_bg, bg = p.green_300, bold = true },
    ViModeComponentCmd = { fg = c.status_line_bg, bg = p.red_300, bold = true },

    PwdComponent = { fg = c.foreground, bg = c.status_line_bg },
    PwdComponentLabel = { fg = c.foreground, bg = c.status_line_bg },

    FileComponent = { fg = c.foreground, bg = c.status_line_bg },
}
