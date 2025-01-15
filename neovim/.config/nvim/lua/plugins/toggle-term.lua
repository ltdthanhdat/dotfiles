return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require('toggleterm').setup({
			direction = "float",
			start_in_insert = false,
		})
		-- quit terminal mode
		vim.keymap.set('t', '<C-\\>', [[<C-\><C-N>:close<CR>]], { noremap = true, silent = true })
		vim.keymap.set('n', '<C-\\>', ':ToggleTerm<CR>i', { noremap = true, silent = true })
	end
}
