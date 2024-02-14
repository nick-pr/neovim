local p = require("themes.argon.palette")
local FOREGROUND = p.gray_200
local BACKGROUND = "#141414"
-- local BACKGROUND = p.neutral_900

return {
    float_border = p.gray_400,
    float_bg = "#1B1B1F",
    background = BACKGROUND,
    foreground = FOREGROUND,
    keyword = p.fuchsia_300,
    functions = p.blue_300,
    parameter = p.orange_300,
    -- comment = "#55606C",
    comment = p.zinc_500,
    property = p.orange_200,
    field = FOREGROUND,
    import = p.orange_300,
    string = p.green_200,
    type = p.teal_300,
    tag = p.red_300,
    operator = FOREGROUND,
    constructor = p.orange_300,
    overlay = p.gray_400,
    punc_bracket = p.gray_400,
    numbers = p.red_400,
    visual = p.zinc_750,
    cursor_line = p.neutral_850,
    status_line_bg = p.neutral_800,
}

