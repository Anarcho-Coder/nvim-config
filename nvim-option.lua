-- Vim Options

local opt = vim.opt

opt.history = 300
opt.autoindent = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Editor UI Commands
opt.number = true
opt.textwidth = 80
opt.colorcolumn = "+1"
opt.cursorline = true
opt.cursorcolumn = false 
opt.wrap = false
opt.ruler = true
opt.showcmd = true

-- Search options
opt.ignorecase = true
opt.infercase = true
opt.incsearch = true

-- Automatic Saving
opt.autowrite = true

-- Tab option
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

