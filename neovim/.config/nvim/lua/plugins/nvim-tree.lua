-- pass to setup along with your other options
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true

		-- keymap
		vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>',
			{ noremap = true, silent = true, desc = "toggle nvim-tree" })

		-- OR setup with some options
		require("nvim-tree").setup({
			-- update nvim tree when directory changes
			update_cwd = true,
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end
}
