local red="#EB3D66"
local grey="#a79aae"
local darkGrey="#848484"
local cyan="#779BE1"
local green="#6CBB78"
local magenta="#BB6CAF"
local yellow="#E1BD77"
local black="#000000"
local white="#CCCCCC"
local blue = "#4D7CD8"

-- clear background
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]

vim.g.colors_name = 'wise-theme'
-- system wide
-- vim.wo.number=true
vim.api.nvim_set_hl(0, 'LineNr', {fg=grey})
vim.api.nvim_set_hl(0, "signcolumn",{bg=""})
vim.api.nvim_set_hl(0,"matchparen",{fg=black,bg=darkGrey,underline=false})

-- floats
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#ffffff'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#150E31'})

-- telescope
vim.api.nvim_set_hl(1, 'TelescopeNormal', {bg=red})
vim.api.nvim_set_hl(1, 'TelescopeBorder', {bg=red})


-- pmenu
vim.api.nvim_set_hl(0,"pmenuthumb",{fg=white,bg=cyan})
vim.api.nvim_set_hl(0,'pmenu',{ctermbg=''})

-- syntax
-- cyan
--
--vim.api.nvim_set_hl(0, "your-group", { link = "another-group" })
vim.api.nvim_set_hl(0,'@variable',{fg=cyan,bold=false})
vim.api.nvim_set_hl(0,'identifier',{fg=cyan,bold=false})
vim.api.nvim_set_hl(0,"@module.python",{fg=cyan})
vim.api.nvim_set_hl(0,"directory",{fg=cyan})

vim.api.nvim_set_hl(0,'function',{fg=green})
vim.api.nvim_set_hl(0, "@function.builtin.lua", { link = "function" })
vim.api.nvim_set_hl(0,"type",{fg=green})

vim.api.nvim_set_hl(0,'delimiter',{fg=grey})
vim.api.nvim_set_hl(0,"comment",{fg=grey})
vim.api.nvim_set_hl(0,"operator",{fg=grey})

vim.api.nvim_set_hl(0,"specialchar",{fg=red})
vim.api.nvim_set_hl(0,"special",{fg=red})

vim.api.nvim_set_hl(0,"constant",{fg=magenta})
vim.api.nvim_set_hl(0,"string",{fg=magenta})
-- "@function.builtin.lua"
-- "@punctuation.special"
-- "@character.special"
vim.api.nvim_set_hl(0,"preproc",{fg=yellow})
vim.api.nvim_set_hl(0,"Statement",{fg=yellow})
--"@variable.parameter.builtin"
-- "@lsp.type.typeParameter"
-- "@markup.strikethrough"
-- "@lsp.type.enumMember"
-- "@string.special.url"
-- "@lsp.type.parameter"
-- "@lsp.type.namespace"
-- "@lsp.type.interface"
-- "@lsp.type.decorator"
-- "@lsp.mod.deprecated"
-- "@lsp.type.variable"
-- "@lsp.type.property"
-- "@lsp.type.operator"
-- "@lsp.type.modifier"
-- "@lsp.type.function"
-- "@attribute.builtin"
-- "@variable.builtin"
-- "@markup.underline"
-- "@lsp.type.keyword"
-- "@lsp.type.comment"
-- "@function.builtin"
-- "@constant.builtin"
-- "@lsp.type.struct"
-- "@lsp.type.string"
-- "@lsp.type.regexp"
-- "@lsp.type.number"
-- "@lsp.type.method"
-- "@comment.warning"
-- "@string.special"
-- "@module.builtin"
-- "@markup.heading"
-- "@lsp.type.macro"
-- "@lsp.type.event"
-- "@lsp.type.class"
-- "@string.regexp"
-- "@string.escape"
-- "@module.python"
-- "@markup.strong"
-- "@markup.italic"
-- "@lsp.type.type"
-- "@lsp.type.enum"
-- "@comment.error"
-- "@type.builtin"
-- "@number.float"
-- "@comment.todo"
-- "@comment.note"
-- "@tag.builtin"
-- "@punctuation"
-- "@markup.link"
-- "@constructor"
-- "@diff.minus"
-- "@diff.delta"
-- "@diff.plus"
-- "@character"
-- "@attribute"
-- "@attribute"
-- "@variable"
-- "@property"
-- "@operator"
--
-- "@function"
-- "@constant"
-- "@keyword"
-- "@comment"
-- "@boolean"
-- "@string"
-- "@number"
-- "@module"
-- "@markup"
-- "@label"
-- "@type"
-- "@tag"
