vim.g.mapleader=" "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set("n", "<leader>dn",vim.cmd.ObsidianToday)
vim.keymap.set("n", "<leader>dy",vim.cmd.ObsidianYesterday)
vim.keymap.set("n", "<leader>dt",vim.cmd.ObsidianTomorrow)
vim.keymap.set("n", "<leader>ot",vim.cmd.ObsidianTemplate)
vim.keymap.set("n", "O","O<Esc>")
vim.keymap.set("n", "o","o<Esc>")
vim.keymap.set("n", "d", "\"_d")
vim.keymap.set("n", "dd", "\"_dd")
vim.cmd[[set clipboard+=unnamedplus]]
