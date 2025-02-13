return {
    {
        name = "󰌁 Huefy",
        rtxt = ":Huefy",
        hl = "Exorange",
        cmd = function()
            require("minty.huefy").open()
        end,
    },
    { name = "separator" },
    {
        name = " Shades",
        rtxt = ":Shades",
        hl = "Exyellow",
        cmd = function()
            require("minty.shades").open()
        end,
    },
}
