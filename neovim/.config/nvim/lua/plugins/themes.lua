return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		config = function()
			vim.opt.background = "dark" -- set this to dark or light
			vim.cmd("colorscheme oxocarbon")
		end,
	},
	{
		"catppuccin/nvim",
		lazy = true,
		config = function()
			vim.cmd.colorscheme "catppuccin-mocha"
		end,
	},
	{
		"dgox16/oldworld.nvim",
		lazy = true,
		config = function()
			vim.cmd.colorscheme("oldworld")
		end,
	},
}
