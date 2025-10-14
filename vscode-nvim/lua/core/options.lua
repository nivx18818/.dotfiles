vim.g.mapleader = " "

local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.updatetime = 200              -- faster cursor-hold and diagnostics
opt.timeoutlen = 300              -- shorter key-sequence timeout
