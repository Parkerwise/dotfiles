return {
	{
	"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
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
	{
	"nvim-treesitter/playground",
	}
}

