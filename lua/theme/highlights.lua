local p = require("theme.palette")


local FOREGROUND = p.gray_200
local c = {
    float_bg = "#121213",
    background = "#161617",
    foreground = FOREGROUND,
    keyword = p.fuchsia_350,
    functions = p.blue_300,
    parameter = p.orange_300,
    comment = p.gray_500,
    property = p.orange_200,
    field = FOREGROUND,
    import = p.orange_300,
    string = p.green_250,
    type =  p.teal_400,
    tag = p.red_300,
    operator = FOREGROUND,
    constructor = p.orange_300,
    overlay = p.gray_400,
    punc_bracket = p.slate_400,
    numbers = p.red_400,
    visual = "#272932",
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

    Keyword =           { fg = c.keyword, bold = true },
    Conditional =       { link = "Keyword" },
    Repeat =            { link = "Keyword" },

    String =            { fg = c.string },
    Number =            { fg = p.red_350 },
    Boolean =           { link = "Number" },
    Type =              { fg = c.type },
    Error =             { fg = c.foreground, bg = p.red_300},
    Special =           { fg = p.orange_300 },
    Function =          { fg = c.functions },
    Operator =          { fg = c.operator },

    Todo =              { fg = p.orange_300 },
    Include =           { fg = c.import ,bold = true},
    MatchParen =        { fg = c.foreground, bg = c.background },
    VertSplit =         { fg = "#1F1F23", bg = c.background },
    FloatBorder =       { fg = c.overlay },
    NormalFloat =       { bg = c.background },
    Visual =            { bg = c.visual },
    Search =            { bg = p.dark_4 },
    Comment =           { fg = c.comment },
    PreProc =           { fg = p.orange_300 },
    StatusLine =        { link = "VertSplit" },
    StatusLineTerm =    { link = "VertSplit" },
    MatchParen =        { fg = p.other.yellow, bold = true },
    Folded =            { bg = "#181820" },

    -- GitSigns
    GitSignsAdd =       { fg = p.green_400, bg = c.background },
    GitSignsChange =    { fg = p.amber_400, bg = c.background },
    GitSignsDelete =    { fg = p.red_400, bg = c.background },

    -- Telescope
    TelescopeBorder =   { fg = c.overlay, bg = c.float_bg },
    TelescopeNormal =   { fg = c.overlay, bg = c.float_bg },

    -- Fzf-lua
    FzfLuaNormal =      { link = "Normal" },
    -- FzfLuaCursor =      { fg = c.foreground, bg = c.float_bg },
    -- FzfLuaBorder =      { fg = c.overlay, bg = c.float_bg },
    -- FzfLuaCursorLine =  { bg = c.floatBg, fg = p.orange_300 },

    -- Treesitter
    ["@type"] =                     { link = "Type" },
    ["@type.definition"] =          { fg = c.type, bold = true},
    ["@type.qualifier"] =           { fg = c.keyword, bold = true},
    ["@keyword"] =                  { link = "Keyword"},
    ["@repeat"] =                   { link = "Repeat" },
    ["@conditional"] =              { link = "Conditional"},
    ["@constructor"] =              { fg = c.constructor },
    ["@constructor.lua"] =          { link = "@punctuation.bracket" },
    ["@punctuation.bracket"] =      { fg = c.punc_bracket},
    ["@punctuation.delimiter"] =    { fg = c.overlay },
    ["@tag.delimiter"] =            { fg = c.overlay },
    ["@property"] =                 { fg = c.property},
    ["@tag.attribute"] =            { link = "@property" },
    ["@field"] =                    { fg = c.field },
    ["@comment"] =                  { link = "Comment" },
    ["@tag"] =                      { fg = c.tag },
    ["@boolean"] =                  { link = "Boolean" },
    ["@operator"] =                 { link = "Operator" },
    ["@parameter"] =                { fg = c.parameter },
    ["@variable"] =                 { fg = c.foreground },
    ["@variable.builtin"] =         { link = "@number" },
    ["@constant.builtin"] =         { link = "@function.macro" },
    ["@constant"] =                 { link = "Normal" },
    ["@number"] =                   { link = "Number" },
    ["@label"]  =                   { fg = p.blue_300 },
    ["@function.macro"] =           { fg = p.orange_300 , bold = true },
    ["@exception"] =                { fg = p.orange_300 , bold = true },
    ["@function.builtin"] =         { fg = p.orange_300, bold = true },
    ["@text.reference"] =           { fg = c.functions },
    ["@namespace"] =                { fg = p.red_350 },


    ["@type.toml"] =                { fg = p.orange_300 },
    ["@property.toml"] =            { fg = c.foreground },
    
    ["@field.lua"] =                { fg = c.property },


    -- LSP 
    DiagnosticSignHint =            { fg = p.blue_400 },
    DiagnosticSignWarn =            { fg = p.orange_300 },
    DiagnosticSignError =           { fg = p.red_500 },

    -- Nvim-tree
    NvimTreeNormal =            { bg = c.float_bg },
    NvimTreeFolderIcon =        { fg = p.blue_300 },
    NvimTreeFolderName =        { fg = p.blue_300 },
    NvimTreeRootFolder =        { fg = p.neutral_400 },
    NvimTreeOpenedFolderName =  { fg = p.orange_300 },
    NvimTreeOpenedFile =        { fg = c.foreground },
}
