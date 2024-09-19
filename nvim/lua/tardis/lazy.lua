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
'sindrets/diffview.nvim',
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
{ 'glacambre/firenvim', build = ":call firenvim#install(0)" },
"vim-pandoc/vim-pandoc-syntax",
"williamboman/mason-lspconfig.nvim",
"neovim/nvim-lspconfig",
"hrsh7th/nvim-cmp",
"hrsh7th/cmp-nvim-lsp",
"nvim-tree/nvim-tree.lua",
'nvim-tree/nvim-web-devicons',
"vhyrro/luarocks.nvim",
"onsails/lspkind.nvim",
"theRealCarneiro/hyprland-vim-syntax",
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	disables_filetypes = {'markdown'}
},
--'ixru/nvim-markdown',
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
'ThePrimeagen/vim-be-good',
{
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
'duane9/nvim-rg'
}
}
local opts={}
require("lazy").setup(plugins, opts)
