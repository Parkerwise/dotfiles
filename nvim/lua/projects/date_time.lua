local M = {}
-- converts 24-hour to 12-hour
local function get_military_hour(twelve_hour, period)
	if period == "AM" then
		return twelve_hour
	elseif twelve_hour == "12" then
		if period == "PM" then
			return 12
		else
			return 0
		end
	else
		return twelve_hour + 12
	end
end
-- convert time function
local function convert_string(time_string)
	for twelve_hour, minute, period in string.gmatch(time_string, "(%d+):(%d+) (%D+)") do
	local twenty_four_hour = get_military_hour(twelve_hour, period)
	local string_time_secs = twenty_four_hour*3600 + minute*60
	return string_time_secs
	end
end
-- gives start and end times for line
local function parse_times(sentence)
	for start_string, end_string in string.gmatch(sentence, "(%d+:%d+ %D+) %-%> (%d+:%d+ %D+)|") do
		local start_secs = convert_string(start_string)
		local end_secs = convert_string(end_string)
	return start_secs, end_secs
	end
end

-- gets current time
local time = os.date("*t")
local current_time_secs = time.hour*3600 + time.min*60

-- testing strings
local line_1 = "- [a] 08:00 AM -> 11:00 AM| work"
local line_2 = "- [a] 04:00 PM -> 08:00 PM| PHSX 616"



-- on-going
local function event_status(sentence)
	local start_secs, end_secs = parse_times(sentence)
	local has_started = current_time_secs > start_secs
	local has_ended = current_time_secs > end_secs
	if has_started and not has_ended then
		local output_string = string.gsub(sentence, "%[.%]", "[-]")
		return output_string
	elseif has_started and has_ended then
		local output_string = string.gsub(sentence, "%[.%]", "[b]")
		return output_string
	elseif not has_started and not has_ended then
		local output_string = string.gsub(sentence, "%[.%]", "[a]")
		return output_string
	else
		print("Double check your times...")
	end
end

local function replace()
	local filepath = vim.api.nvim_buf_get_name(0)
	local line_number = 0
    for line in io.lines(filepath) do
		if string.find(line, "%d+:%d+ %D+ %-%> %d+:%d+ %D+|") then
			local replacement_string = event_status(line)
			-- vim.api.nvim_buf_set_text(0, line_number, 4, line_number, 4, ['asdf'])
			vim.api.nvim_buf_set_lines(0, line_number, line_number+1, false, {replacement_string})
		end
	line_number = line_number+1
	end
end

local autocmd = vim.api.nvim_create_autocmd
	function M.setup(opts)
		autocmd(
		{'BufWrite'},
			{
				pattern = "/home/pw/obsidian-vault/journal/daily/*",
				callback = function()
					vim.schedule(function()
					replace()
					end)
				end
			}
		)
end
return M
