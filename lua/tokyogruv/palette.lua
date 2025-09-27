local config = require("tokyogruv.config")
local utils = require("tokyogruv.utils")

local palette = {
    black = "#1d2021",
    bg0 = "#0D0D0D",
    bg1 = "#202020",
    bg2 = "#3c3836",
    bg3 = "#504945",
    bg4 = "#665c54",
    bg5 = "#282828",
    bg_red = "#cc241d",
    bg_green = "#98971a",
    bg_blue = "#458588",
    diff_red = "#3c1f1e",
    diff_green = "#2b3c30",
    diff_blue = "#0f3a42",
    diff_add = "#32361a",
    diff_change = "#45403b",
    diff_delete = "#3c1f1e",
    diff_text = "#0f3a42",
    fg = "#ebdbb2",
    red = "#fb4934",
    orange = "#fe8019",
    yellow = "#fabd2f",
    green = "#b8bb26",
    blue = "#83a598",
    cyan = "#8ec07c",
    purple = "#d3869b",
    grey = "#928374",
    none = "NONE",
}

local function gamma_correction(colors)
    local colors_corrected = {}
    for k, v in pairs(colors) do
        colors_corrected[k] = utils.color_gamma(v, config.gamma)
    end
    return colors_corrected
end

local custom_palette = type(config.custom_palette) == "function"
        and config.custom_palette(palette)
    or config.custom_palette

return gamma_correction(vim.tbl_extend("force", palette, custom_palette))
