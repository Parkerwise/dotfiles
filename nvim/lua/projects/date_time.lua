local M = {}
-- converts current time to secs passed since 12:00 AM (rounded to the minute)
local time = os.date("*t")
local current_time_secs = time.hour*3600 + time.min*60

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
-- convert "%I:%M %p" time to number of seconds passed since 12:00 AM
local function convert_string(time_string)
	for twelve_hour, minute, period in string.gmatch(time_string, "(%d+):(%d+) (%D+)") do
	local twenty_four_hour = get_military_hour(twelve_hour, period)
	local string_time_secs = twenty_four_hour*3600 + minute*60
	return string_time_secs
	end
end

local function event_status(sentence)
	-- extract start and end time from string in secs since 12:00 AM
	for start_string, end_string in string.gmatch(sentence, "(%d+:%d+ %D+) %-%> (%d+:%d+ %D+)|") do
	local start_secs = convert_string(start_string)
	local end_secs = convert_string(end_string)

	-- identify the status of the event
	local has_started = current_time_secs >= start_secs
	local has_ended = current_time_secs >= end_secs
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
end

-- searches file in current buffer for lines in schedule format and updates
local function replace()
	local filepath = vim.api.nvim_buf_get_name(0)
	local line_number = 0
    for line in io.lines(filepath) do
		if string.find(line, "%d+:%d+ %D+ %-%> %d+:%d+ %D+|") then
			local replacement_string = event_status(line)
			vim.api.nvim_buf_set_lines(0, line_number, line_number+1, false, {replacement_string})
		end
	line_number = line_number+1
	end
end

-- updates formatted strings when user writes
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
