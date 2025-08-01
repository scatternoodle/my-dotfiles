-- Example specific cinoptions
vim.opt.cindent = true
vim.opt.cinoptions:append({
	"s-1", -- Indent 'case' labels one less than 'switch'
	"l1", -- Label line continues at indent level 1
	":0", -- Don't indent statements after ':'
	"g0", -- Don't indent goto labels
})
