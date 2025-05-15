local addScheme = function(s)
	return { s, priority = 1000 }
end

return {

	-- This actually sets the colorscheme, and allows you to change the colorscheme
	-- (e.g. using Telescope) and persist your choice between sessions.
	{
		dir = "~/.config/nvim/lua/custom/colorscheme-saver",
		lazy = false,
		priority = 900,
		init = function()
			require("custom.colorscheme-saver").setup()
		end,
	},

	-- Add colorscheme plugins below...
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	addScheme("rebelot/kanagawa.nvim"),
	addScheme("miikanissi/modus-themes.nvim"),
	addScheme("folke/tokyonight.nvim"),
	addScheme("Shatur/neovim-ayu"),
	-- addScheme("RRethy/base16-nvim"), -- so many in this one, it can be a bit overwhelming!
	addScheme("xero/miasma.nvim"),
	addScheme("cocopon/iceberg.vim"),
	addScheme("ntk148v/komau.vim"),
	addScheme("LuRsT/austere.vim"),
	addScheme("maxmx03/fluoromachine.nvim"),
}
