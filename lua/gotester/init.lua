local M = {}

local group = 'gotester'

local callback = function ()
	vim.cmd('GoTest')
end

M.setup = function(opts)
	vim.api.nvim_create_augroup(group, { clear = true })

	M.enable()
end

M.toggle = function()
	if (#vim.api.nvim_get_autocmds({ group = group }) == 0) then
		M.enable()
	else
		M.disable()
	end
end

M.enable = function ()
	vim.api.nvim_create_autocmd('BufWritePost', {
		group = group,
		callback = callback,
		pattern = '*.go',
	})
end

M.disable = function ()
	vim.api.nvim_clear_autocmds({ group = group })
end

return M
