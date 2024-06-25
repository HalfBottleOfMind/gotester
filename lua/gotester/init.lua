local callback = function ()
	print('TODO: run test here')
end

local M = {}

M.setup = function(opts)
	print('gotester setup')
end

M.toggle = function()
	if (#vim.api.nvim_get_autocmds({ group = 'gotester' }) == 0) then
		M.enable()
	else
		M.disable()
	end
end

M.enable = function ()
	vim.api.nvim_create_autocmd('BufWritePost', {
		group = vim.api.nvim_create_augroup('gotester', { clear = true }),
		callback = callback,
	})
end

M.disable = function ()
	vim.api.nvim_clear_autocmds({ group = 'gotester' })
end

M.test = function ()
	print(#vim.api.nvim_get_autocmds({ group = 'gotester' }) == 0)
end

return M
