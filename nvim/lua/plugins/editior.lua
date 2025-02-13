return {
    {
        "barrett-ruth/live-server.nvim",
        build = "npm add -g live-server",
        cmd = { "LiveServerStart", "LiveServerStop" },
        config = true,
    },
    { "nvzone/volt", lazy = true },

    {
        "nvzone/minty",
        cmd = { "Shades", "Huefy" },
    },
    {
        "nvzone/menu",
        lazy = true,
        event = "VeryLazy",
        opts = {
            mouse = true,
            border = true,
        },
        config = function()
            -- Keyboard users
            vim.keymap.set("n", "<C-w>", function()
                require("menu").open "defaults"
            end, {})

            -- mouse users + nvimtree users!
            vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
                require("menu.utils").delete_old_menus()

                vim.cmd.exec '"normal! \\<RightMouse>"'

                -- clicked buf
                local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
                local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "defaults"

                require("menu").open(options, { mouse = true })
            end, {})
        end,
    },
}
