vim.api.nvim_create_user_command('GotesterToggle', function ()
	require('gotester').toggle()
end, {})

vim.api.nvim_create_user_command('GotesterEnable', function ()
	require('gotester').enable()
end, {})

vim.api.nvim_create_user_command('GotesterDisable', function ()
	require('gotester').disable()
end, {})
