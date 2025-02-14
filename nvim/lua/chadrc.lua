-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "gruvbox",
    transparency = true,
    theme_toggle = { "bearded-arc", "gruvbox" },
    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
        DiffChange = {
            bg = "#c9c343",
            fg = "none",
        },
        DiffAdd = {
            bg = "#3fd21b",
            fg = "none",
        },
        DiffRemoved = {
            bg = "#c94343",
            fg = "none",
        },
        NvimTreeWinSeparator = {
            bg = "NONE",
            fg = "line",
        },
    },
}

M.nvdash = { load_on_startup = true }
M.ui = {
    cmp = {
        style = "atom_colored",

        format_colors = {
            tailwind = true,
        },
    },
    telescope = {
        style = "bordered",
    },
    statusline = {
        theme = "minimal",
        enabled = true,
        separator_style = "block",
    },
    tabufline = {
        enabled = true,
        show_close_button = true,
        lazyload = true,
    },

    term = {
        winopts = { number = false, relativenumber = true },
        sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
        float = {
            relative = "editor",
            row = 0.3,
            col = 0.25,
            width = 0.5,
            height = 0.4,
            border = "single",
        },
    },
}

return M
