local M = {}

function M.load_env(file)
	local env = {}

	local f = io.open(file, "r")
	if not f then
		vim.notify(string.format("Could not open env file at %s", file), vim.log.levels.DEBUG)
		return env
	end

	for l in f:lines() do
		-- Matches on .env format 'KEY=VAL'
		local key, val = string.match(l, "^%s*([%w_]+)%s*=%s*(.+)%s*$")
		if key and val then
			val = string.gsub(val, '^"(.*)"$', "%1")
			val = string.gsub(val, "^'(.*)'$", "%1")
			env[key] = val
		end
	end
	f:close()
	return env
end

return M
