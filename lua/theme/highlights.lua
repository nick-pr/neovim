local p = require("theme.palette")

-- Color variables
local c = {
    -- background = "#151515",
    background = p.other.background,
    foreground = p.other.white,
}

-- Highlight table that will used to apply the highlights. Uses colors directly from the palette or from predefined color variables as defined above. 
return {

    -- Core Highlights
    Normal =        { fg = c.foreground, bg = c.background },
    SignColumn =    { fg = p.dark_2 , bg = c.background },
    LineNr =        { fg = p.dark_1 , bg = c.background },
    CursorLineNR =  { fg = p.other.orange , bg = c.background },
    CursorLine =    { bg = c.background },
    EndOfBuffer =   { fg = c.background },
    Pmenu =         { fg = c.foreground, bg = c.background },
    PmenuSel =      { fg = c.foreground , bg = p.other.grey },
    Keyword =       { fg = p.other.orange },
    String =        { fg = p.other.light_green },
    Number =        { fg = c.foreground },
    Operator =      { fg = c.foreground },
    Function =      { fg = p.other.blue },
    Conditional =   { fg = p.other.orange },
    Include =       { fg = p.other.cyan },
    MatchParen =    { fg = c.foreground, bg = c.background },
    VertSplit =     { fg = p.dark_3, bg = c.background },
    FloatBorder =   { fg = c.foreground },

    -- GitSigns
    GitSignsAdd =       { fg = p.green_2, bg = c.background },
    GitSignsChange =    { fg = p.yellow_4, bg = c.background },
    GitSignsDelete =    { fg = p.red_2, bg = c.background },


    -- Treesitter
    TSProperty =            { fg = p.other.cyan },
    TSMethod =              { fg = p.other.blue },
    TSField =               { fg = p.other.cyan },
    TSPunctBracket =        { fg = c.foreground },
    TSPunctDelimiter =      { fg = c.foreground },
    TSParameter =           { fg = c.foreground },
    TSVariableBuiltin =     { fg = p.other.orange },
    TSConstructor =         { fg = p.other.cyan },
    TSRepeat =              { fg = p.other.orange },
    TSFunction =            { fg = p.other.blue },
    TSFuncBuiltin =         { fg = p.other.blue },
    TSComment =             { fg = p.other.grey },
    TSKeywordReturn =       { fg = p.other.red },
    TSOperator =            { fg = "#C0A36E" },
    TSType =                { fg = p.other.blue_green },
    TSBoolean =             { fg = p.other.yellow },

    -- LSP 
   DiagnosticSignHint = { fg = p.other.cyan}
}
