local custom = require'lualine.themes.gruvbox'
disabled_filetypes = { statusline = { 'markdown' } }
red="#EB3D66"
grey="#303134"
cyan="#4D7CD8"
green="#6CBB78"
magenta="#934592"
yellow="#E1BD77"
black="#000000"
custom.normal.a.bg=cyan
custom.normal.b.bg=nil
custom.normal.c.bg=nil

custom.inactive.a.bg=grey
custom.inactive.b.bg=grey
custom.inactive.c.bg=grey
custom.inactive.c.fg=white
custom.visual.a.bg=yellow
custom.visual.b.bg=nil
custom.visual.c.bg=nil

custom.command.a.bg=magenta
custom.command.b.bg=nil
custom.command.c.bg=nil

custom.replace.a.bg=red
custom.replace.b.bg=nil
custom.replace.c.bg=nil
custom.insert.a.bg=green
custom.insert.b.bg=nil
custom.insert.c.bg=nil

custom.normal.a.fg='#090821'
custom.normal.b.fg=white
custom.normal.c.fg=white
custom.visual.a.fg='#090821'
custom.visual.b.fg=white
custom.visual.c.fg=white
custom.command.a.fg='#090821'
custom.command.b.fg=white
custom.command.c.fg=white
custom.replace.a.fg='#090821'
custom.replace.b.fg=white
custom.replace.c.fg=white
custom.insert.a.fg='#090821'
custom.insert.b.fg=white
custom.insert.c.fg=white
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
