red="#EB3D66"
grey="#a79aae"
darkGrey="#848484"
cyan="#779BE1"
green="#6CBB78"
magenta="#BB6CAF"
yellow="#E1BD77"
black="#000000"
white="#CCCCCC"

vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#ffffff'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#150E31'})
vim.api.nvim_set_hl(1, 'TelescopeNormal', {bg=red})
vim.api.nvim_set_hl(1, 'TelescopeBorder', {bg=red})
vim.wo.number=true
vim.api.nvim_set_hl(0, 'LineNr', {fg=grey})
vim.api.nvim_set_hl(0,'identifier',{fg=cyan,bold=false})
vim.api.nvim_set_hl(0,'@variable',{fg=cyan,bold=false})
vim.api.nvim_set_hl(0,'function',{fg=green})
vim.api.nvim_set_hl(0,'pmenu',{ctermbg=''})
vim.api.nvim_set_hl(0,'delimiter',{fg=grey})
vim.api.nvim_set_hl(0,"specialchar",{fg=red})
vim.api.nvim_set_hl(0,"special",{fg=green})
vim.api.nvim_set_hl(0,"constant",{fg=magenta})
vim.api.nvim_set_hl(0,"string",{fg=magenta})
vim.api.nvim_set_hl(0,"comment",{fg=grey})
vim.api.nvim_set_hl(0,"type",{fg=red})
vim.api.nvim_set_hl(0,"preproc",{fg=yellow})
vim.api.nvim_set_hl(0,"Statement",{fg=yellow})
vim.api.nvim_set_hl(0,"operator",{fg=grey})
vim.api.nvim_set_hl(0,"matchparen",{fg=black,bg=darkGrey,underline=false})
vim.api.nvim_set_hl(0,"pmenuthumb",{fg=white,bg=cyan})
vim.api.nvim_set_hl(0, "signcolumn",{bg=""})
vim.api.nvim_set_hl(0,"directory",{fg=cyan})
vim.api.nvim_set_hl(0,"Iblindent",{fg=black})
vim.api.nvim_set_hl(0,"TSTitle", {fg=green})
vim.api.nvim_set_hl(0,"IndentBlanklineIndent1", {fg=green})
