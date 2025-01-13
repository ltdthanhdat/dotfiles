return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require('toggleterm').setup({
			direction = "float",
			start_in_insert = false,
		})
	end
}
