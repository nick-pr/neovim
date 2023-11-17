function winbar()
    return table.concat({ 
        "%#FileComponent#",
        " %f %m" 
    })
end

vim.opt.winbar = "%{%v:lua.winbar()%}"
