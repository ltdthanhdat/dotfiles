return
{
	'charludo/projectmgr.nvim',
	lazy = false, -- important!
	opts = {
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
	},
	config = function(_, opts)
		require("projectmgr").setup(opts)
		vim.api.nvim_set_keymap("n", "<leader>p", ":ProjectMgr<CR>", { desc = "Project manager" })
		vim.api.nvim_create_autocmd("DirChanged", {
			callback = function()
				-- Kiểm tra nếu buffer hiện tại không phải là Alpha hoặc hợp lệ
				local current_buf = vim.api.nvim_get_current_buf()
				local buf_type = vim.api.nvim_buf_get_option(current_buf, "buftype")
				if buf_type == "" then
					vim.cmd("Alpha")
				end
			end,
		})
	end

}
