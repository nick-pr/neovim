local p = require("themes.argon.palette")
local FOREGROUND = p.gray_200
local BACKGROUND = "#121212"

return {
    float_border = p.gray_400,
    float_bg = "#1B1B1F",
    background = BACKGROUND,
    foreground = FOREGROUND,
    keyword = p.fuchsia_325,
    functions = p.blue_300,
    parameter = p.orange_300,
    comment = "#55606C",
    property = p.orange_200,
    field = FOREGROUND,
    import = p.orange_300,
    string = p.green_250,
    type = p.teal_325,
    tag = p.red_300,
    operator = FOREGROUND,
    constructor = p.orange_300,
    overlay = p.gray_400,
    punc_bracket = p.gray_400,
    numbers = p.red_400,
    visual = "#272932",
    cursor_line = "#181A1E",
    status_line_bg = "#1F2125",
}

