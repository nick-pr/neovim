local p = require("themes.argon.palette")
local c = {
    float_border = p.neutral_400,
    float_bg = "#1B1B1F",
    BACKGROUND = p.neutral_900,
    FOREGROUND = p.neutral_200,
    STATUS_LINE_BG = p.neutral_750,
    KEYWORD = p.fuchsia_250,
    TYPE = p.teal_200,
    FUNCTION = p.blue_200,
    PROPERTY = p.orange_200,
    OVERLAY = p.neutral_500,
    SIGNCOL_BG = p.neutral_800,
    field = FOREGROUND,
    IMPORT = p.red_200,
    string = p.green_200,
    tag = p.red_200,
    operator = FOREGROUND,
    constructor = p.orange_200,
    overlay = p.gray_400,
    punc_bracket = p.gray_400,
    numbers = p.red_400,
    visual = p.zinc_750,
    cursor_line = p.neutral_800,
}


-- Highlight table that will used to apply the highlights
return {
    -- Core Highlights
    Normal =                            { fg = c.FOREGROUND, bg = c.BACKGROUND },
    SignColumn =                        { bg = c.SIGNCOL_BG},
    LineNr =                            { fg = c.OVERLAY },
    CursorLineNR =                      { fg = p.orange_300, bg = c.cursor_line },
    CursorLine =                        { bg = c.cursor_line },
    EndOfBuffer =                       { fg = c.BACKGROUND },
    Pmenu =                             { fg = c.overlay, bg = p.neutral_800 },
    PmenuSel =                          { fg = p.orange_300, bg = p.neutral_600 },
    StatusLine =                        { fg = c.FOREGROUND, bg = c.STATUS_LINE_BG },
    Keyword =                           { fg = c.KEYWORD, bold = false },
    Conditional =                       { link = "Keyword" },
    Repeat =                            { link = "Keyword" },
    String =                            { fg = p.green_200 },
    Number =                            { fg = p.red_300 },
    Boolean =                           { link = "Number" },
    Type =                              { fg = c.TYPE },
    Error =                             { fg = c.FOREGROUND, bg = p.red_300 },
    Special =                           { fg = p.orange_300 },
    Function =                          { fg = c.FUNCTION },
    Operator =                          { fg = c.operator },
    Todo =                              { fg = p.orange_300 },
    Include =                           { fg = c.IMPORT },
    MatchParen =                        { fg = c.FOREGROUND, bg = c.BACKGROUND },
    VertSplit =                         { fg = c.STATUS_LINE_BG, bg = c.BACKGROUND },
    FloatBorder =                       { fg = c.overlay },
    NormalFloat =                       { bg = c.BACKGROUND },
    Visual =                            { bg = c.visual },
    Search =                            { bg = p.yellow_500, fg = c.BACKGROUND },
    Comment =                           { fg = c.OVERLAY },
    PreProc =                           { fg = p.orange_300 },
    MatchParen =                        { fg = p.other.yellow, bold = true },
    Folded =                            { bg = "#181820" },
    WinSeparator =                      { fg = c.cursor_line, bold = true },

    -- GitSigns
    GitSignsAdd =                       { fg = p.green_400, bg = c.BACKGROUND },
    GitSignsChange =                    { fg = p.amber_400, bg = c.BACKGROUND },
    GitSignsDelete =                    { fg = p.red_400, bg = c.BACKGROUND },

    -- Telescope
    TelescopeBorder =                   { fg = c.overlay, bg = c.float_bg },
    TelescopeNormal =                   { fg = c.overlay, bg = c.float_bg },

    -- Fzf-lua
    FzfLuaNormal =                      { link = "Normal" },
    FzfLuaBorder =                      { fg = c.FOREGROUND, bg = c.BACKGROUND },

    -- Treesitter
    ["@type"] =                         { link = "Type" },
    ["@type.builtin"] =                 { link = "Type" },
    ["@type.definition"] =              { fg = c.TYPE, bold = false },
    ["@type.qualifier"] =               { fg = p.emerald_300, bold = false },
    ["@keyword"] =                      { link = "Keyword" },
    ["@repeat"] =                       { link = "Repeat" },
    ["@conditional"] =                  { link = "Conditional" },
    ["@constructor"] =                  { fg = c.constructor },
    ["@constructor.lua"] =              { link = "@punctuation.bracket" },
    ["@punctuation.bracket"] =          { fg = c.punc_bracket },
    ["@punctuation.delimiter"] =        { fg = c.punc_bracket },
    ["@tag.delimiter"] =                { fg = c.overlay },
    ["@variable.member"] =              { fg = c.PROPERTY },
    ["@tag.attribute"] =                { link = "@property" },
    ["@field"] =                        { fg = c.field },
    ["@comment"] =                      { link = "Comment" },
    ["@tag"] =                          { fg = c.tag },
    ["@tag.attribute.svelte"] =         { fg = p.sky_300 },
    ["@text.title.svelte"] =            { link = "Normal" },
    ["@boolean"] =                      { link = "Boolean" },
    ["@operator"] =                     { link = "Operator" },
    ["@property"] =                     { fg = c.PROPERTY },
    ["@variable"] =                     { fg = c.FOREGROUND },
    ["@variable.parameter"] =           { fg = c.FOREGROUND },
    ["@variable.builtin"] =             { link = "@number" },
    ["@constant.builtin"] =             { link = "@function.macro" },
    ["@constant"] =                     { fg = c.FOREGROUND },
    ["@number"] =                       { link = "Number" },
    ["@property"] =                     { fg = c.PROPERTY },
    ["@label"] =                        { fg = p.blue_300 },
    ["@function.macro"] =               { fg = p.orange_200 },
    ["@exception"] =                    { fg = p.orange_300 },
    ["@function.builtin"] =             { fg = p.orange_300 },
    ["@text.reference"] =               { fg = c.FUNCTION },
    ["@module"] =                       { link = "Include"},
    ["@text.title"] =                   { fg = c.FOREGROUND },
    ["@string.special.url"] =           { fg = p.blue_300 },
    ["@lsp.type.variable"] =            { link = "@variable" },
    ["@lsp.type.namespace"] =           { link = "@namespace" },
    ["@markup.heading.1"] =             { fg = p.orange_300, bold = true },
    ["@markup.heading.2"] =             { fg = p.blue_300, bold = true },
    ["@markup.heading.3"] =             { fg = p.red_300, bold = true },
    ["@markup.strong"] =                { bold = true },
    ["@markup.italic"] =                { italic = true },
    ["@markup.link"] =                  { fg = c.overlay, italic = true },
    ["@markup.list"] =                  { fg = p.red_300, italic = true },
    ["@markup.link.label"] =            { fg = c.FOREGROUND, italic = true },
    ["@markup.link.url"] =              { fg = p.blue_400, underline = true },
    ["@markup.raw"] =                   { fg = c.overlay },
    ["@markup.heading.gitcommit"] =     { bold = false },

    -- Treesitter (Rust)
    ["@storageclass.rust"] =            { link = "@keyword" },
    ["@field.rust"] =                   { fg = c.PROPERTY },

    -- Treesitter (Toml)
    ["@type.toml"] =                    { fg = p.orange_300 },
    ["@property.toml"] =                { fg = c.FOREGROUND },

    -- Treesitter (Lua)
    ["@field.lua"] =                    { fg = c.PROPERTY },

    -- Treesitter (HTML)
    ["@markup.heading.1.html"] =        { fg = c.FOREGROUND, bold = false },
    ["@markup.heading.2.html"] =        { fg = c.FOREGROUND, bold = false },
    ["@markup.heading.3.html"] =        { fg = c.FOREGROUND, bold = false },
    ["@markup.heading.4.html"] =        { fg = c.FOREGROUND, bold = false },

    -- Treesitter (Svelte)
    ["@text.title.svelte"] =            { fg = c.FOREGROUND },
    ["@markup.heading.1.svelte"] =      { fg = c.FOREGROUND, bold = false },
    ["@markup.heading.2.svelte"] =      { fg = c.FOREGROUND, bold = false },
    ["@markup.heading.3.svelte"] =      { fg = c.FOREGROUND, bold = false },
    ["@markup.heading.4.svelte"] =      { fg = c.FOREGROUND, bold = false },

    -- Treesitter (CSS)
    ["@number.css"] =                   { fg = c.FOREGROUND },
    ["@string.css"] =                   { fg = c.FOREGROUND },


    -- LSP
    DiagnosticSignHint =                { fg = p.blue_400, bg =  c.SIGNCOL_BG},
    DiagnosticSignWarn =                { fg = p.orange_300, bg = c.SIGNCOL_BG },
    DiagnosticSignError =               { fg = p.red_500, bg = c.SIGNCOL_BG },

    --Oil
    OilDir =                            { fg = p.blue_300, bold = true },

    -- Statusbar and Winbar
    ViModeComponentNormal =             { fg = c.STATUS_LINE_BG, bg = p.orange_300, bold = true },
    ViModeComponentVisual =             { fg = c.STATUS_LINE_BG, bg = p.purple_300, bold = true },
    ViModeComponentVisualLine =         { fg = c.STATUS_LINE_BG, bg = p.purple_300, bold = true },
    ViModeComponentVisualBlock =        { fg = c.STATUS_LINE_BG, bg = p.purple_300, bold = true },
    ViModeComponentInsert =             { fg = c.STATUS_LINE_BG, bg = p.green_300, bold = true },
    ViModeComponentCmd =                { fg = c.STATUS_LINE_BG, bg = p.red_300, bold = true },
    PwdComponent =                      { fg = c.FOREGROUND, bg = c.STATUS_LINE_BG },
    PwdComponentLabel =                 { fg = c.FOREGROUND, bg = c.STATUS_LINE_BG },
    FileComponent =                     { fg = c.FOREGROUND, bg = c.STATUS_LINE_BG },
    FileInfoComponent =                 { fg = c.FOREGROUND, bold = true },
}
