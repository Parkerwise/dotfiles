return {
	{
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup{
		actions = {
			open_file = {
				quit_on_open = true,
				},
			},
		}
		end,
	},
	{
	'nvim-tree/nvim-web-devicons',
	}

}
