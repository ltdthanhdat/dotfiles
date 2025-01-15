return
{
	'charludo/projectmgr.nvim',
	lazy = false, -- important!
	autogit = {
		enabled = false,
		command = "git pull --ff-only",
	},
	reopen = false,
	session = { enabled = false, file = "Session.vim" },
	shada = { enabled = false, file = "main.shada" },
	scripts = {
		enabled = false,
		file_startup = "startup.sh",
		file_shutdown = "shutdown.sh",
	},

	config = function()
		vim.api.nvim_set_keymap("n", "<leader>p", ":ProjectMgr<CR>", {})
	end,
}
