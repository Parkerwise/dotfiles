require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed= {"lua_ls","pylsp","clangd","html","cssls"}

})
local capabilities=require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup{
capabilities=capabilities,
}
require("lspconfig").pylsp.setup{
capabilities=capabilities,
}
require("lspconfig").clangd.setup{
capabilities=capabilities,
}
require("lspconfig").html.setup{
capabilities=capabilities,
}
require("lspconfig").cssls.setup{
capabilities=capabilities,
}
require("lspconfig").sqlls.setup{
capabilities=capabilities,
}

