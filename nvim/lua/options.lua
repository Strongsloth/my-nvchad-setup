require "nvchad.options"

-- add yours here!

local opt = vim.opt
local o = vim.o
local wo = vim.wo

opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

o.cursorlineopt = "both"
o.shell = "bash"

wo.number = true
wo.relativenumber = true
