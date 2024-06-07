local custom = require'lualine.themes.gruvbox'
custom.normal.a.bg=6
custom.normal.b.bg=nil
custom.normal.c.bg=nil

custom.inactive.a.bg=8
custom.inactive.b.bg=8
custom.inactive.c.bg=8
custom.inactive.c.fg=15
custom.visual.a.bg=3
custom.visual.b.bg=nil
custom.visual.c.bg=nil

custom.command.a.bg=5
custom.command.b.bg=nil
custom.command.c.bg=nil

custom.replace.a.bg=1
custom.replace.b.bg=nil
custom.replace.c.bg=nil
custom.insert.a.bg=2
custom.insert.b.bg=nil
custom.insert.c.bg=nil

custom.normal.a.fg='#090821'
custom.normal.b.fg=15
custom.normal.c.fg=15
custom.visual.a.fg='#090821'
custom.visual.b.fg=15
custom.visual.c.fg=15
custom.command.a.fg='#090821'
custom.command.b.fg=15
custom.command.c.fg=15
custom.replace.a.fg='#090821'
custom.replace.b.fg=15
custom.replace.c.fg=15
custom.insert.a.fg='#090821'
custom.insert.b.fg=15
custom.insert.c.fg=15
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
