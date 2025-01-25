return {
    'nvim-lualine/lualine.nvim',

    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		vim.api.nvim_create_autocmd('ModeChanged', {callback=require('lualine').refresh})
		local custom = require("lualine_theme")
		require('lualine').setup{
		--options = { theme = custom }
		}
	end,
}
