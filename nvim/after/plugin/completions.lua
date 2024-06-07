local cmp = require("cmp")
local luasnip = require("luasnip")
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
vim.api.nvim_set_hl(0,"CmpItemKindFunction",{ctermfg="green"})
vim.api.nvim_set_hl(0,"CmpItemKindKeyword",{ctermfg="yellow"})
vim.api.nvim_set_hl(0,"CmpItemKindModule",{ctermfg="blue"})
vim.api.nvim_set_hl(0,"CmpItemKindVariable",{ctermfg="blue"})
vim.api.nvim_set_hl(0,"CmpItemKindText",{ctermfg="magenta"})
vim.api.nvim_set_hl(0,"CmpItemKindClass",{ctermfg="blue"})
vim.api.nvim_set_hl(0,"CmpItemKindMethod",{ctermfg="green"})
local icons={
Keyword="",
Function="󰊕",
Module="󰕳",
Variable=" ",
Snippet=" ",
Text="󰊄",
Class="",
Method="",
Constructor="",
}
cmp.setup({
mapping =
{
	 ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
      -- that way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

	["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
},
sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' },
    }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
	window={
		documentation=cmp.config.window.bordered({
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
			winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None', 
		}),
		completion=cmp.config.window.bordered({
			border="single",
			winhighlight="Normal:Pmenu,FloatBorder:cyan,Cursorline:Pmenuthumb,search:error"
		}),
	},
formatting = {
  format = function(entry, vim_item)
	  vim_item.kind=icons[vim_item.kind] or ""
	  vim_item.menu=''
	return vim_item
  end
},
  })
