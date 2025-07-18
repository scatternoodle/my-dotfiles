local paths_to_check = { "/", "/../" }
local is_godot_project = false
local godot_project_path = ""
local cwd = vim.fn.getcwd()

for _, path in pairs(paths_to_check) do
	if vim.uv.fs_stat(cwd .. path .. "project.godot") then
		is_godot_project = true
		godot_project_path = cwd .. path
		break
	end
end

local is_server_running = vim.uv.fs_stat(godot_project_path .. "/server.pipe")
if is_godot_project and not is_server_running then
	vim.fn.serverstart(godot_project_path .. "/server.pipe")
end
