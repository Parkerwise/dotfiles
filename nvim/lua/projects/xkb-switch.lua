-- Default parameters
local M = {}
M.events_get_focus = {'FocusGained', 'CmdlineLeave'}

-- nvim_create_autocmd shortcut
local autocmd = vim.api.nvim_create_autocmd

local function get_current_layout()
	local handle = io.popen('layout.sh')
	local result = handle:read("*a")
	return result
end

local saved_layout = get_current_layout()
local function switch_to_english()
	io.popen("hyprctl switchxkblayout at-translated-set-2-keyboard 0"):close()
	io.popen("hyprctl switchxkblayout keebio-iris-ce-rev.-1 0"):close()
end

local function switch_back()
	local laptop = saved_layout:sub(1,1)
	local keeb = saved_layout:sub(2,2)
	io.popen("hyprctl switchxkblayout at-translated-set-2-keyboard ".. laptop):close()
	io.popen("hyprctl switchxkblayout keebio-iris-ce-rev.-1 ".. keeb):close()
end

	-- print(saved_layout)
	function M.setup(opts)
		autocmd(
			'InsertLeave',
			{
				pattern = "*",
				callback = function()
					vim.schedule(function()
						saved_layout = get_current_layout()
						switch_to_english()
					end)
				end
			}
		)
    -- When Neovim gets focus:
    -- 1. Save the current layout
    -- 2. Switch to the US layout if Normal Mode or Visual Mode is the current mode
    autocmd(
        M.events_get_focus,
        {
            pattern = "*",
            callback = function()
                vim.schedule(function()
                    saved_layout = get_current_layout()
                    local current_mode = vim.api.nvim_get_mode().mode
                    if current_mode == "n" or current_mode == "no" or current_mode == "v" or current_mode == "V" or current_mode == "^V" then
						switch_to_english()
                    end
                end)
            end
        }
    )

    -- When Neovim loses focus
    -- When entering Insert Mode:
    -- 1. Switch to the previously saved layout
    autocmd(
        {'FocusLost', 'InsertEnter'},
        {
            pattern = "*",
            callback = function()
                vim.schedule(function()
					switch_back()
                end)
            end
        }
    )
end
return M
