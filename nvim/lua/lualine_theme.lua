local colors = {
	darkgray = "darkgray",
	gray = "gray",
	red="#EB3D66",
	grey="#303134",
	cyan="#4D7CD8",
	green="#6CBB78",
	magenta="#934592",
	yellow="#E1BD77",
	darkblue="#090821"
}
return {
  normal = {
-- custom.normal.a.bg=cyan
    a = {bg = colors.cyan, fg = colors.darkblue, gui = 'bold'},
    b = {bg = nil, fg = colors.white},
    c = {bg = nil, fg = colors.white}
  },
  insert = {
-- custom.insert.a.bg=green
    a = {bg = colors.green, fg = colors.darkblue, gui = 'bold'},
    b = {bg = nil, fg = colors.white},
    c = {bg = nil, fg = colors.white}
  },
  visual = {
-- custom.visual.a.bg=yellow
    a = {bg = colors.yellow, fg = colors.darkblue, gui = 'bold'},
    b = {bg = nil, fg = colors.white},
    c = {bg = nil, fg = colors.white}
  },
  replace = {
-- custom.replace.a.bg=red
    a = {bg = colors.red, fg = colors.darkblue, gui = 'bold'},
    b = {bg = nil, fg = colors.white},
    c = {bg = nil, fg = colors.white}
  },
  command = {
-- custom.command.a.bg=magenta
    a = {bg = colors.magenta, fg = colors.darkblue, gui = 'bold'},
    b = {bg = nil, fg = colors.white},
    c = {bg = nil, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.grey, fg = colors.white, gui = 'bold'},
    b = {bg = colors.grey, fg = colors.white},
    c = {bg = colors.grey, fg = colors.white}
  },
}
