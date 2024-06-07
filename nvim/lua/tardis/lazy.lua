local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
'nvim-telescope/telescope.nvim',
'nvim-lua/plenary.nvim',
'lervag/vimtex',
'mbbill/undotree',
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},
"williamboman/mason.nvim",
"vim-pandoc/vim-pandoc-syntax",
"williamboman/mason-lspconfig.nvim",
"neovim/nvim-lspconfig",
"hrsh7th/nvim-cmp",
"hrsh7th/cmp-nvim-lsp",
"nvim-tree/nvim-tree.lua",
'nvim-tree/nvim-web-devicons',
"onsails/lspkind.nvim",
"theRealCarneiro/hyprland-vim-syntax",
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
},
'ixru/nvim-markdown',
{
"nvim-treesitter/nvim-treesitter",
config=function()
	local treesitter=require("nvim-treesitter.configs")
	treesitter.setup({
		highlight={
			enable=true,
		},
		indent={
			enable = true
		},
		ensure_installed={
			"lua",
			"markdown",
			"python",
			"css",
			"html",
			"javascript",
			"json",
			"yaml",
			"markdown_inline",
			"bash",
			"vim",
			"gitignore",

		},
	})
end,
},
"nvim-treesitter/playground",
{
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = false, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
    -- tag = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
},
}
local opts={}
require("lazy").setup(plugins, opts)
