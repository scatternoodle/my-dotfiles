local envvar_host = "GODOT_HOST"
local default_host = "127.0.0.1"

local envvar_port = "GDSCRIPT_PORT"
local default_port = "6005"

local envvar_pipefile = "GODOT_PIPEFILE"
local default_pipefile = "tmp/godot_pipe"

local root_dir = vim.fs.dirname(vim.fs.find({ "project.godot", ".git" }, { upward = true })[1])
local dotenv = require("custom.utils").load_env(root_dir .. "/.env")

local host = dotenv[envvar_host]
if host == nil or host == "" then
	host = os.getenv(envvar_host)
	if host == nil or host == "" then
		host = default_host
	end
end

local port = dotenv[envvar_port]
if port == nil or port == "" then
	port = os.getenv(envvar_port)
	if port == nil or port == "" then
		port = default_port
	end
end

local pipe = dotenv[envvar_pipefile]
if pipe == nil or pipe == "" then
	pipe = os.getenv(envvar_pipefile)
	if pipe == nil or pipe == "" then
		pipe = default_pipefile
	end
end
pipe = root_dir .. pipe

local project_name = vim.fn.fnamemodify(root_dir, ":h")
local server_name = "vimgodotserver_" .. project_name

vim.lsp.start({
	name = server_name,
	cmd = vim.lsp.rpc.connect(host, tonumber(port)),
	root_dir = root_dir,
})
