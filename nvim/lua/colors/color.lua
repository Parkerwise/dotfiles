local red="#EB3D66"
local lightGrey="#a79aae"
local grey = "#848484"
local darkGrey="#303134"
local cyan="#779BE1"
local darkCyan="#4D7CD8"
local green="#6CBB78"
local darkGreen = "#4DA75B"
local magenta="#BB6CAF"
local darkMagenta="#934592"
local yellow="#E1BD77"
local darkYellow="#D8A94D"
local black="#000000"
local white="#CCCCCC"
local blue = "#150E31"
local darkblue="#090821"

local M = {}
--[[
M.lualine
]]--

function M.set_color ()
	-- vim.api.nvim_set_hl(0,"foo",{fg=yellow})
	-- vim.cmd.syntax([[match foo ]])
	---
	vim.api.nvim_set_hl(0, 'LineNr', {fg=lightGrey})
	-- clear background
	vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
	vim.g.colors_name = 'wise-theme'
	-- system wide
	vim.api.nvim_set_hl(0, 'LineNr', {fg=lightGrey})
	vim.api.nvim_set_hl(0, "signcolumn",{bg=""})
	vim.api.nvim_set_hl(0,"matchparen",{fg=black,bg=grey,underline=false})
	vim.api.nvim_set_hl(0,"MsgArea",{fg=white,bg=blue})

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
	-- cyan: variables
	--vim.api.nvim_set_hl(0, "your-group", { link = "another-group" })
	vim.api.nvim_set_hl(0,'@variable',{fg=cyan,bold=false})
	vim.api.nvim_set_hl(0,'identifier',{fg=cyan,bold=false})
	vim.api.nvim_set_hl(0,"@module.python",{fg=cyan})
	vim.api.nvim_set_hl(0,"directory",{fg=cyan})
	-- green: functions
	vim.api.nvim_set_hl(0,'function',{fg=green})
	vim.api.nvim_set_hl(0, "@function.builtin.lua", { link = "function" })
	vim.api.nvim_set_hl(0, "type",{fg=green})
	-- grey: background things
	vim.api.nvim_set_hl(0,'delimiter',{fg=lightGrey})
	vim.api.nvim_set_hl(0,"comment",{fg=lightGrey})
	vim.api.nvim_set_hl(0,"operator",{fg=lightGrey})
	-- red: constructor/specialchar
	vim.api.nvim_set_hl(0,"specialchar",{fg=red})
	vim.api.nvim_set_hl(0,"special",{fg=red})
	-- magenta: values
	vim.api.nvim_set_hl(0,"constant",{fg=magenta})
	vim.api.nvim_set_hl(0,"string",{fg=magenta})
	-- "@function.builtin.lua"
	-- "@punctuation.special"
	-- "@character.special"
	-- yellow: builtin
	vim.api.nvim_set_hl(0,"preproc",{fg=yellow})
	vim.api.nvim_set_hl(0,"Statement",{fg=yellow})
	-- "semshiLocal"
	-- "semshiGlobal"
	-- "semshiImported"
	-- "semshiParameter"
	-- "semshiParameterUnused"
	-- "semshiFree"
	-- "semshiBuiltin"
	-- "semshiAttribute"
	-- "semshiSelf"
	-- "semshiUnresolved"
	-- "semshiSelected"
	-- "semshiErrorSign"
	-- "semshiErrorChar"
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
end
function M.lualine()
return {
  normal = {
-- custom.normal.a.bg=cyan
    a = {bg = darkCyan, fg = darkblue, gui = 'bold'},
    b = {bg = blue, fg = white},
    c = {bg = blue, fg = white}
  },
  insert = {
-- custom.insert.a.bg=green
    a = {bg = green, fg = darkblue, gui = 'bold'},
    b = {bg = blue, fg = white},
    c = {bg = blue, fg = white}
  },
  visual = {
-- custom.visual.a.bg=yellow
    a = {bg = yellow, fg = darkblue, gui = 'bold'},
    b = {bg = blue, fg = white},
    c = {bg = blue, fg = white}
  },
  replace = {
-- custom.replace.a.bg=red
    a = {bg = red, fg = darkblue, gui = 'bold'},
    b = {bg = blue, fg = white},
    c = {bg = blue, fg = white}
  },
  command = {
-- custom.command.a.bg=magenta
    a = {bg = darkMagenta, fg = darkblue, gui = 'bold'},
    b = {bg = blue, fg = white},
    c = {bg = blue, fg = white}
  },
  inactive = {
    a = {bg = darkGrey, fg = white, gui = 'bold'},
    b = {bg = darkGrey, fg = white},
    c = {bg = darkGrey, fg = white}
  },
}
end
return M
