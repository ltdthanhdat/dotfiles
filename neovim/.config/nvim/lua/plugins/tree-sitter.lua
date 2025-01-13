return {
	'nvim-treesitter/nvim-treesitter',
	opts = {
		run = ":TSUpdate",
	},
	config = function()
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = {
				"html", "css", "json", "markdown", "markdown_inline", "dockerfile",
				"python", "javascript", "typescript", "lua", "bash", "php"
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end,
}
