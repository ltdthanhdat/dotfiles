return {
	'stevearc/conform.nvim',
	config = function()
		local conform = require("conform")
		conform.setup({
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},

			format_after_save = {
				lsp_format = "fallback",
			},
		})
	end,
}
