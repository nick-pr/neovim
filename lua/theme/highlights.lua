local p = require("theme.palette")

local c = {
    floatBG = p.dark_1,
    background = p.dark_1,
    foreground = p.gray_225,
    keyword = p.purple_350,
    functions = p.blue_350,
    parameter = p.red_400,
    comment = p.gray_500,
    property = p.sky_300,
    import = p.indigo_400,
    string = p.green_250,
    type =  p.teal_400,
    tag = p.red_300,
    operator = p.gray_225,
    constructor = p.orange_300,
    overlay = p.gray_400,
    puncBracket = p.gray_400,
    numbers = p.red_400,
}

-- Highlight table that will used to apply the highlights. Uses colors directly from the palette or from predefined color variables as defined above. 
return {

    -- Core Highlights
    Normal =            { fg = c.foreground, bg = c.background },
    SignColumn =        { bg = c.background },
    LineNr =            { fg = p.gray_500 , bg = c.background },
    CursorLineNR =      { fg = p.orange_300 , bg = c.background },
    CursorLine =        { bg = c.background },
    EndOfBuffer =       { fg = c.background },
    Pmenu =             { fg = c.overlay, bg = p.dark_1 },
    PmenuSel =          { fg = p.orange_300, bg = p.dark_1 },

    Keyword =           { fg = p.fuchsia_350 },
    Conditional =       { link = "Keyword" },
    Repeat =            { link = "Keyword" },

    String =            { fg = c.string },
    Number =            { fg = p.red_350 },
    Boolean =           { link = "Number" },
    Type =              { fg = p.teal_400 },
    Error =             { fg = c.foreground, bg = p.red_300},
    Special =           { fg = p.orange_300 },
    Function =          { fg = c.functions },
    Operator =          { fg = c.operator },

    Todo =              { fg = p.orange_300 },
    Include =           { fg = p.orange_300 },
    MatchParen =        { fg = c.foreground, bg = c.background },
    VertSplit =         { fg = p.dark_3, bg = c.background },
    FloatBorder =       { fg = c.overlay, bg = c.floatBG },
    NormalFloat =       { bg = c.floatBG },
    Visual =            { bg = p.dark_3 },
    Search =            { bg = p.dark_4 },
    Comment =           { link = "@comment" },
    PreProc =           { fg = p.orange_300 },
    StatusLine =        { link = "VertSplit" },
    StatusLineTerm =    { link = "VertSplit" },
    Folded =            { bg = p.dark_3 },

    -- GitSigns
    GitSignsAdd =       { fg = p.green_400, bg = c.background },
    GitSignsChange =    { fg = p.amber_400, bg = c.background },
    GitSignsDelete =    { fg = p.red_400, bg = c.background },

    -- Telescope
    TelescopeBorder =   { fg = c.overlay, bg = c.floatBG },
    TelescopeNormal =   { fg = c.overlay, bg = c.floatBG },

    -- Fzf-lua
    FzfLuaNormal =      { link = "Normal" },
    -- FzfLuaCursor =      { fg = c.foreground, bg = c.floatBG },
    -- FzfLuaBorder =      { fg = c.overlay, bg = c.floatBG },
    -- FzfLuaCursorLine =  { bg = c.floatBg, fg = p.orange_300 },

    -- Treesitter
    ["@type"] =                     { link = "Type" },
    ["@type.definition"] =          { fg = p.orange_300 },
    ["@keyword"] =                  { link = "Keyword"},
    ["@repeat"] =                   { link = "Repeat" },
    ["@conditional"] =              { link = "Conditional"},
    ["@constructor"] =              { fg = c.constructor },
    ["@constructor.lua"] =          { link = "@punctuation.bracket" },
    ["@punctuation.bracket"] =      { fg = c.puncBracket },
    ["@punctuation.delimiter"] =    { fg = c.overlay },
    ["@tag.delimiter"] =            { fg = c.overlay },
    ["@property"] =                 { link = "Function" },
    ["@tag.attribute"] =            { link = "@property" },
    ["@field"] =                    { link = "@property" },
    ["@comment"] =                  { fg = c.comment },
    ["@tag"] =                      { fg = c.tag },
    ["@boolean"] =                  { link = "Boolean" },
    ["@operator"] =                 { link = "Operator" },
    ["@parameter"] =                { fg = p.red_400 },
    ["@variable"] =                 { fg = c.foreground },
    ["@variable.builtin"] =         { link = "@number" },
    ["@constant.builtin"] =         { link = "@number" },
    ["@number"] =                   { link = "Number" },
    ["@label"]  =                   { fg = p.blue_300 },
    ["@function.macro"] =           { fg = p.orange_300 },
    ["@namespace"] =                { fg = p.red_400 },

    -- LSP 
    DiagnosticSignHint =            { fg = p.blue_400 },
    DiagnosticSignWarn =            { fg = p.orange_300 },
    DiagnosticSignError =           { fg = p.red_500 },

    -- Nvim-tree
    NvimTreeNormal =            { link = "Normal" },
    NvimTreeFolderIcon =        { fg = p.blue_300 },
    NvimTreeFolderName =        { fg = p.blue_300 },
    NvimTreeRootFolder =        { fg = p.neutral_400 },
    NvimTreeOpenedFolderName =  { fg = p.orange_300 },
    NvimTreeOpenedFile =        { fg = c.foreground },
}
