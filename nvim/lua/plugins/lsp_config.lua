return {
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end,
	},
	{
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed= {"lua_ls","pylsp","clangd","html","cssls"}
		})
	end,
	},

	{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities=require('cmp_nvim_lsp').default_capabilities()
		lspconfig.lua_ls.setup {
		  settings = {
			Lua = {
			  runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			  },
			  diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {
				  'vim',
				  'require'
				},
			  },
			  workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			  },
			  -- Do not send telemetry data containing a randomized but unique identifier
			  telemetry = {
				enable = false,
			  },
			},
		  },
		}
		lspconfig.pylsp.setup{
		capabilities=capabilities,
		}
		lspconfig.clangd.setup{
		capabilities=capabilities,
		}
		lspconfig.html.setup{
		capabilities=capabilities,
		}
		lspconfig.cssls.setup{
		capabilities=capabilities,
		}
		lspconfig.sqlls.setup{
		capabilities=capabilities,
		}
	end,
	}
}
