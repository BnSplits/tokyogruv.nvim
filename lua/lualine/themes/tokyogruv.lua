-- Copyright (c) 2021-2022 tiagovla
-- License: MIT
--
local p = require("tokyogruv.palette")
local colors = {
    bg = p.bg0,
    fg = p.fg,
    red = p.red,
    green = p.green,
    yellow = p.yellow,
    blue = p.blue,
    purple = p.purple,
    cyan = p.cyan,
    grey = p.grey,
}

local tokyo_gruv = {
    inactive = {
        a = { fg = colors.grey, bg = colors.bg, gui = "bold" },
        b = { fg = colors.grey, bg = colors.bg },
        c = { fg = colors.grey, bg = colors.bg },
        x = { fg = colors.grey, bg = colors.bg },
        y = { fg = colors.grey, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
    normal = {
        a = { fg = colors.green, bg = colors.bg, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
        x = { fg = colors.fg, bg = colors.bg },
        y = { fg = colors.fg, bg = colors.bg },
        z = { fg = colors.green, bg = colors.bg, gui = "bold" },
    },
    visual = { a = { fg = colors.purple, bg = colors.bg, gui = "bold" } },
    replace = { a = { fg = colors.red, bg = colors.bg, gui = "bold" } },
    insert = { a = { fg = colors.blue, bg = colors.bg, gui = "bold" } },
    command = { a = { fg = colors.yellow, bg = colors.bg, gui = "bold" } },
}

local mt = {}
function mt:__index(k)
    if k == "colors" then
        return colors
    end
end

tokyo_gruv = setmetatable(tokyo_gruv, mt)

return tokyo_gruv
