return {
	-- Uncomment to use github default branch
	-- "scatternoodle/nvim-aseprite",

	-- Uncomment to use local dev version
	dir = vim.fn.expand("$HOME/workspace/github.com/scatternoodle/nvim-aseprite"),
	name = "nvim-aseprite",
	event = "VeryLazy",
	opts = {},
	keys = {
		{ "<leader>a", desc = "Aseprite" },
		{ "<leader>ar", "<cmd>AsepriteRestart<cr>", desc = "Restart Aseprite" },
		{ "<leader>as", "<cmd>AsepriteStop<cr>", desc = "Stop Aseprite" },
	},
}
