return {
    'nvim-lualine/lualine.nvim',

    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		vim.api.nvim_create_autocmd('ModeChanged', {callback=require('lualine').refresh})
		local custom = require("colors.color")
		require('lualine').setup{
		options = { theme = custom.lualine() }
		}
	end,
}
