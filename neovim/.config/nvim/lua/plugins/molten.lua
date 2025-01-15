return
{
	"benlubas/molten-nvim",
	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	build = ":UpdateRemotePlugins",
	init = function()
		-- this is an example, not a default. Please see the readme for more configuration options
		vim.g.molten_output_win_max_height = 12

		-- keymap
		vim.keymap.set('n', '<leader>e', ':MoltenEvaluateLine<CR>', { noremap = true, silent = true })
		vim.keymap.set("v", "<localleader>e", ":<C-u>MoltenEvaluateVisual<CR>",
			{ silent = true, desc = "evaluate visual selection" })
		vim.keymap.set("n", "<localleader>re", ":MoltenReevaluateCell<CR>",
			{ silent = true, desc = "re-evaluate cell" })
	end,
}
