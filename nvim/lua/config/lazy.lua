local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- local opts={
--   checker = { enabled = true },
-- }
-- local plugins = {"
-- 'nvim-telescope/telescope.nvim',
-- 'sindrets/diffview.nvim',
-- 'nvim-lua/plenary.nvim',
-- 'lervag/vimtex',
-- 'mbbill/undotree',
-- {
-- 	"L3MON4D3/LuaSnip",
-- 	-- follow latest release.
-- 	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
-- 	-- install jsregexp (optional!).
-- 	build = "make install_jsregexp"
-- },
-- "williamboman/mason.nvim",
-- { 'glacambre/firenvim', build = ":call firenvim#install(0)" },
-- "vim-pandoc/vim-pandoc-syntax",
-- "williamboman/mason-lspconfig.nvim",
-- "neovim/nvim-lspconfig",
-- "hrsh7th/nvim-cmp",
-- "hrsh7th/cmp-nvim-lsp",
-- "nvim-tree/nvim-tree.lua",
-- 'nvim-tree/nvim-web-devicons',
-- "vhyrro/luarocks.nvim",
-- "onsails/lspkind.nvim",
-- "theRealCarneiro/hyprland-vim-syntax",
-- 'nvim-tree/nvim-web-devicons',
-- 'nvim-lualine/lualine.nvim',
-- {
-- "nvim-treesitter/nvim-treesitter",
-- config=function()
-- 	local treesitter=require("nvim-treesitter.configs")
-- 	treesitter.setup({
-- 		highlight={
-- 			enable=true,
-- 		},
-- 		indent={
-- 			enable = true
-- 		},
-- 		ensure_installed={
-- 			"lua",
-- 			"markdown",
-- 			"python",
-- 			"css",
-- 			"html",
-- 			"javascript",
-- 			"json",
-- 			"yaml",
-- 			"markdown_inline",
-- 			"bash",
-- 			"vim",
-- 			"gitignore",
--
-- 		},
-- 	})
-- end,
-- },
-- "nvim-treesitter/playground",
-- 'ThePrimeagen/vim-be-good',
-- {
--   "epwalsh/obsidian.nvim",
--   version = "*",  -- recommended, use latest release instead of latest commit
--   lazy = true,
--   ft = "markdown",
--   -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
--   -- event = {
--   --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
--   --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
--   --   "BufReadPre path/to/my-vault/**.md",
--   --   "BufNewFile path/to/my-vault/**.md",
--   -- },
--   dependencies = {
--     -- Required.
--     "nvim-lua/plenary.nvim",
--   },
-- 'duane9/nvim-rg',
-- 'numirias/semshi',
-- },
-- { dir = '/home/pw/.local/share/nvim/projects/xkb-switch.nvim' },
-- }

