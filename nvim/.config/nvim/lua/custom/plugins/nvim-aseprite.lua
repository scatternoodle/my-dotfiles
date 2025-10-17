return {
	"git@github.com:scatternoodle/nvim-aseprite.git",
	name = "nvim-aseprite",
	-- event = "VeryLazy",
	config = function()
		require("nvim-aseprite").setup()
	end,
}
