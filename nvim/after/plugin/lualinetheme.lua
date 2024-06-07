local M = {}
    M.theme = function()
        local colors = {
            darkgray = "darkgray",
            gray = "gray",
            innerbg = nil,
            outerbg = "green",
            normal = "blue",
            insert = "green",
            visual = "yellow",
            replace = "red",
            command = "magenta",
        }
        return {
            inactive = {
                a = { ctermfg = colors.gray, ctermbg= colors.outerbg, gui = "bold" },
                b = { ctermfg = colors.gray, ctermbg= colors.outerbg },
                c = { ctermfg = colors.gray, ctermbg= colors.innerbg },
            },
            visual = {
                a = { ctermfg = colors.darkgray, ctermbg= colors.visual, gui = "bold" },
                b = { ctermfg = colors.gray, ctermbg= colors.outerbg },
                c = { ctermfg = colors.gray, ctermbg= colors.innerbg },
            },
            replace = {
                a = { ctermfg = colors.darkgray, ctermbg= colors.replace, gui = "bold" },
                b = { ctermfg = colors.gray, ctermbg= colors.outerbg },
                c = { ctermfg = colors.gray, ctermbg= colors.innerbg },
            },
            normal = {
                a = { ctermfg = colors.darkgray, ctermbg= colors.normal, gui = "bold" },
                b = { ctermfg = colors.gray, ctermbg= colors.outerbg },
                c = { ctermfg = colors.gray, ctermbg= colors.innerbg },
            },
            insert = {
                a = { ctermfg = colors.darkgray, ctermbg= colors.insert, gui = "bold" },
                b = { ctermfg = colors.gray, ctermbg= colors.outerbg },
                c = { ctermfg = colors.gray, ctermbg= colors.innerbg },
            },
            command = {
                a = { ctermfg = colors.darkgray, ctermbg= colors.command, gui = "bold" },
                b = { ctermfg = colors.gray, ctermbg= colors.outerbg },
                c = { ctermfg = colors.gray, ctermbg= colors.innerbg },
            },
        }
    end
    return M
