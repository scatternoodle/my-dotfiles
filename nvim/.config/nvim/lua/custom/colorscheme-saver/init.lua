-- Copied and adapted from Robin Thrift's very helpful blog post:
-- https://robinthrift.com/posts/2023-06-22-neovim-persistent-colourscheme-changes/
local M = {}

local set_colourscheme = require("custom.colorscheme-saver.colorscheme")

M.setup = function()
	set_colourscheme()

	vim.api.nvim_create_autocmd("ColorScheme", {
		callback = function(args)
			vim.fn.jobstart(
				"sed -i '' -e 's/\\[\\[colorscheme .*\\]\\]/[[colorscheme "
					.. args.match
					.. "]]/' ~/.config/nvim/lua/custom/colorscheme-saver/colorscheme.lua"
			)

			-- Maybe at some point we should also sync alacritty
			-- theme with this... but I have to tackle the alacritty
			-- side of this too.
			-- vim.fn.jobstart("bash -c 'source location_of_functions_file && set_alactritty_color " .. args.match .. "'")
		end,
	})
end

return M
