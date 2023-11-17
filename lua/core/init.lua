local core_modules = {
    "core.settings",
    "core.mappings",
    "core.statusline",
    "core.winbar",
    "core.autocmds",
}

for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
        error("Something went wrong loading" .. module .. "\n" .. err)
    end
end
