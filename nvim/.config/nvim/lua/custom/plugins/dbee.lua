return {
	"kndndrj/nvim-dbee",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	build = function()
		-- Install tries to automatically detect the install method.
		-- if it fails, try calling it with one of these parameters:
		--    "curl", "wget", "bitsadmin", "go"
		require("dbee").install("go")
	end,
	config = function()
		require("dbee").setup({})

		local dbee = require("dbee")
		vim.keymap.set("n", "<leader>db", function()
			if dbee.is_open() then
				dbee.close()
				return
			end
			dbee.open()
		end, { desc = "Dbee open/close" })
	end,
}
