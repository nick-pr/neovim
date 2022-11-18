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
    Include =       { fg = c.import },
    MatchParen =    { fg = c.foreground, bg = c.background },
    VertSplit =     { fg = p.dark_3, bg = c.background },
    FloatBorder =   { fg = c.overlay, bg = c.floatBG },
    NormalFloat =   { bg = c.floatBG },
    Error =         { fg = c.foreground, bg = p.red_300},
    Special =       { fg = p.orange_300 },
    Visual =        { bg = p.dark_4 },
    Search =        { bg = p.yellow_300 },
    Comment =       { link = "@comment" },
    PreProc =       { fg = p.orange_300 },
    StatusLine =    { link = "VertSplit" },
    -- StatusLineNC =  { link = "VertSplit" },
    StatusLineTerm =    { link = "VertSplit" },
    -- StatusLineNC =  { link = "VertSplit" },
    Folded =        { bg = p.dark_3 },

    -- GitSigns
    GitSignsAdd =       { fg = p.green_400, bg = c.background },
    GitSignsChange =    { fg = p.amber_400, bg = c.background },
    GitSignsDelete =    { fg = p.red_400, bg = c.background },

    -- Telescope
    TelescopeBorder =   { fg = c.overlay, bg = c.floatBG },
    TelescopeNormal =   { fg = c.overlay, bg = c.floatBG },

    -- Fzf-lua
    FzfLuaNormal =      { fg = c.overlay, bg = c.floatBG },
    FzfLuaCursor =      { fg = c.foreground, bg = c.floatBG },
    FzfLuaBorder =      { fg = c.overlay, bg = c.floatBG },
    FzfLuaCursorLine =  { bg = c.floatBg, fg = p.orange_300 },

    -- Treesitter
    ["@type"] =                     { fg = c.type },
    ["@keyword"] =                  { fg = c.keyword },
    ["@repeat"] =                   { link = "@keyword" },
    ["@constructor"] =              { fg = c.constructor },
    ["@constructor.lua"] =          { link = "@punctuation.bracket"},
    ["@punctuation.bracket"] =      { fg = c.puncBracket },
    ["@punctuation.delimiter"] =    { fg = c.overlay },
    ["@tag.delimiter"] =            { fg = c.overlay },
    ["@property"] =                 { fg = p.blue_300 },
    ["@tag.attribute"] =            { link = "@property" },
    ["@field"] =                    { link = "@property" },
    ["@comment"] =                  { fg = c.comment },
    ["@tag"] =                      { fg = c.tag },
    ["@boolean"] =                  { link = "@number" },
    ["@operator"] =                 { fg = c.operator },
    ["@parameter"] =                { fg = p.red_400 },
    ["@variable"] =                 { fg = c.foreground },
    ["@variable.builtin"] =         { link= "@number" },
    ["@constant.builtin"] =         { link= "@number" },
    ["@number"] =                   { fg = p.red_300 },
    ["@label"]  =                   { fg = p.blue_300 },
    ["@function.macro"] =           { fg = p.orange_300 },

    -- LSP 
    DiagnosticSignHint =            { fg = p.blue_400 },
    DiagnosticSignWarn =            { fg = p.orange_300 },
    DiagnosticSignError =           { fg = p.red_500 },

    -- Nvim-tree
    NvimTreeNormal =            { fg = c.foreground, bg = p.dark_1 },
    NvimTreeFolderIcon =        { fg = p.blue_300 },
    NvimTreeFolderName =        { fg = p.blue_300 },
    NvimTreeRootFolder =        { fg = p.neutral_400 },
    NvimTreeOpenedFolderName =  { fg = p.orange_300 },
    NvimTreeOpenedFile =        { fg = c.foreground },
    -- NvimTreeSpecialFile =       { fg = p.fucshia_300 },
}
