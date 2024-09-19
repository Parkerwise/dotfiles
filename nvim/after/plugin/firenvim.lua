
if vim.g.started_by_firenvim == true then
        print(vim.g.firenvim_config)
	vim.g.firenvim_config = {
		localSettings = {
			[".*"] = {
				takeover = "never"
			}
		}
	}
end
