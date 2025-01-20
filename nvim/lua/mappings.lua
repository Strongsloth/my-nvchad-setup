require "nvchad.mappings"
-- add yours here
local api = vim.api
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- General
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Write Buffer." })

-- Context Menus & Colors
map({ "n", "v" }, "<leader>cs", "<cmd>Shades<cr>")
map({ "n", "v" }, "<leader>cj", "<cmd>Huefy<cr>")

map("n", "<leader>th", function()
    require("nvchad.themes").open { border = true }
end, {})

api.nvim_create_autocmd("BufDelete", {
    callback = function()
        local bufs = vim.t.bufs
        if #bufs == 1 and api.nvim_buf_get_name(bufs[1]) == "" then
            vim.cmd "Nvdash"
        end
    end,
})
