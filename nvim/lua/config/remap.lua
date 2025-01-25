vim.g.mapleader=" "
-- vanilla function remaps
vim.keymap.set("n", "O","O<Esc>", {desc = "insert line above"})
vim.keymap.set("n", "o","o<Esc>", {desc = "insert line below"})
vim.keymap.set("n", "d", "\"_d", {desc = "delete"})
vim.keymap.set("n", "dd", "\"_dd", {desc = "delete line"})
vim.keymap.set("n", "<tab>", "<C-w>w", {desc = "change pane"})
vim.cmd[[set clipboard+=unnamedplus]]

-- plugins
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, {desc = "toggle file tree"})
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', {desc = "show errors"})
vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle, {desc = "toggle undo tree"})
-- plugins/vimtex
vim.keymap.set("n","<leader>c",function ()
	vim.cmd.w()
	vim.cmd.VimtexCompile()
end, {desc = "compile LaTeX"})
-- plugins/telescope
vim.keymap.set('n', '<leader>ff', require("telescope.builtin").find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fg', require("telescope.builtin").live_grep, {desc = "live grep"})
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope keymaps<CR>", { desc = "find keymaps" })
-- plugins/obsidian
vim.keymap.set("n", "<leader>dn",vim.cmd.ObsidianToday, {desc = "open daily note"})
vim.keymap.set("n", "<leader>dy",vim.cmd.ObsidianYesterday, {desc = "open yesterday's note"})
vim.keymap.set("n", "<leader>dt",vim.cmd.ObsidianTomorrow, {desc = "open tomorrow's note"})
vim.keymap.set("n", "<leader>ot",vim.cmd.ObsidianTemplate, {desc = "insert markdown template"})
