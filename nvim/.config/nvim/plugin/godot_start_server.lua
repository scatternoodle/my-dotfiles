-- On detecting that we're opening vim within a Godot project directory, check
-- if a local server (pipe) is running. If not, start one. This server
-- communicates with the Godot client running for that project.
--
-- This ensures only one server per Godot project, though there may be multiple
-- servers if multiple vim processes are running for multiple different Godot
-- projects - this is desired, as each is essentially its own island.

local function start_godot_server()
	local root_dir = vim.fs.dirname(vim.fs.find({ "project.godot" }, { upward = true })[1])
	if not root_dir then
		return
	end

	local server_dir = root_dir .. "/tmp"
	vim.fn.mkdir(server_dir, "p")

	local server_name = server_dir .. "/godohost"
	local is_server_running = function()
		local serverlist = vim.fn.serverlist()
		for _, server in ipairs(serverlist) do
			if server == server_name then
				return true
			end
		end
		return false
	end

	if is_server_running() then
		return
	end
	vim.fn.serverstart(server_name)
end

start_godot_server()
