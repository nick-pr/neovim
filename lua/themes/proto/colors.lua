local p = require("themes.proto.palette")
local FOREGROUND = p.gray_200
local BACKGROUND = "#121212"

return {
    float_border = p.gray_400,
    float_bg = "#1B1B1F",
    background = BACKGROUND,
    foreground = FOREGROUND,
    keyword = p.yellow_300,
    functions = p.slate_400,
    parameter = FOREGROUND,
    comment = "#606070",
    property = FOREGROUND,
    field = FOREGROUND,
    import = FOREGROUND,
    string = p.green_350,
    type = p.teal_300,
    tag = FOREGROUND,
    operator = FOREGROUND,
    constructor = FOREGROUND,
    overlay = FOREGROUND,
    punc_bracket = FOREGROUND,
    numbers = FOREGROUND,
    builtin = FOREGROUND,
    visual = "#272932",
    status_line_bg = "#202025",
}
