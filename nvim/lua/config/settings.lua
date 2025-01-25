local set = vim.opt -- set options
vim.hl = vim.highlight
set.nrformats = {"bin", "hex", "alpha"}
set.tabstop = 4
vim.opt.colorcolumn = "80"
set.softtabstop = 4
set.shiftwidth = 4
vim.o.signcolumn="yes:1"
vim.o.pumheight=4
vim.wo.relativenumber=true
vim.cmd[[:filetype plugin on]]

