local p = require("theme.palette")
local c = require("theme.colors")


-- Highlight table that will used to apply the highlights. Uses colors directly from the palette or from predefined color variables as defined above. 
return {

    -- Core Highlights
    Normal =        { fg = c.foreground, bg = c.background },
    SignColumn =    { bg = c.background },
    LineNr =        { fg = p.gray_500 , bg = c.background },
    CursorLineNR =  { fg = p.orange_300 , bg = c.background },
    CursorLine =    { bg = c.background },
    EndOfBuffer =   { fg = c.background },
    Pmenu =         { fg = c.overlay, bg = p.dark_1 },
    PmenuSel =      { fg = p.orange_300 , bg = p.dark_1 },
    Keyword =       { fg = c.keyword },
    String =        { fg = c.string },
    Number =        { fg = p.red_300 },
    Operator =      { fg = c.foreground },
    Function =      { fg = c.functions },
    Conditional =   { fg = c.keyword },
    Include =       { fg = p.blue_300 },
    MatchParen =    { fg = c.foreground, bg = c.background, gui = "bold" },
    VertSplit =     { fg = p.dark_3, bg = c.background },
    FloatBorder =   { fg = c.overlay, bg = c.floatBG },
    NormalFloat =   { bg = c.floatBG },
    Error =         { fg = c.foreground, bg = p.red_300},
    Special =       { fg = p.orange_300 },
    Visual =        { bg = p.gray_800 },
    Search =        { bg = p.yellow_300 },

    -- GitSigns
    GitSignsAdd =       { fg = p.green_400, bg = c.background },
    GitSignsChange =    { fg = p.yellow_400, bg = c.background },
    GitSignsDelete =    { fg = p.red_400, bg = c.background },

    -- Telescope
    TelescopeBorder =   { fg = c.overlay, bg = c.floatBG },
    TelescopeNormal =   { fg = c.overlay, bg = c.floatBG },

    -- Fzf-lua
    FzfLuaNormal =      { fg = c.overlay, bg = c.floatBG },
    FzfLuaCursor =      { fg = c.foreground, bg = c.floatBG },
    FzfLuaBorder =      { fg = c.overlay },
    FzfLuaCursorLine =  { bg = c.floatBg, fg = p.orange_300 },

    -- Treesitter
    TSProperty =            { fg = c.property },
    TSField =               { fg = c.property },
    TSMethod =              { fg = c.functions },
    TSFunction =            { fg = c.functions },
    TSString =              { fg = c.string },
    TSStringEscape =        { fg = c.string },
    TSText =                { fg = c.foreground },
    TSTitle =               { fg = c.foreground },
    TSConstructor =         { fg = c.type },
    TSPunctBracket =        { fg = c.overlay },
    TSPunctDelimiter =      { fg = c.foreground },
    TSSpecial =             { fg = p.orange_300 },
    TSParameter =           { fg = p.red_300 },
    TSVariableBuiltin =     { fg = p.red_300 },
    TSConstBuiltin =        { fg = p.red_300 },
    TSRepeat =              { fg = c.keyword },
    TSFuncBuiltin =         { fg = c.functions },
    TSComment =             { fg = p.gray_600 },
    TSKeywordReturn =       { fg = c.keyword },
    TSKeywordOperator =     { fg = c.keyword },
    TSOperator =            { fg = c.overlay },
    TSTypeBuiltin =         { fg = c.type },
    TSType =                { fg = c.type },
    TSBoolean =             { fg = p.red_300 },
    TSTag =                 { fg = p.red_300 },
    TSTagDelimiter =        { fg = c.overlay },
    TSLabel =               { fg = c.property },

    -- LSP 
    DiagnosticSignHint =    { fg = p.blue_300},

    -- Nvim-tree
    NvimTreeNormal =            { fg = c.foreground, bg = p.dark_1 },
    NvimTreeFolderIcon =        { fg = p.blue_300 },
    NvimTreeFolderName =        { fg = p.blue_300 },
    NvimTreeRootFolder =        { fg = p.neutral_400 },
    NvimTreeOpenedFolderName =  { fg = p.orange_300 },
    NvimTreeOpenedFile =        { fg = c.foreground },
    -- NvimTreeSpecialFile =       { fg = p.fucshia_300 },
}
