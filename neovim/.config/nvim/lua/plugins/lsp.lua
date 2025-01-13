return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup(
				{
					ensure_installed = {
						"html", "cssls", "tailwindcss", "jsonls",
						"dockerls", "docker_compose_language_service",
						"ltex", "sqlls", "lua_ls", "eslint", "vtsls",
						"ast_grep", "pyright", "intelephense", "marksman"
					}
				}
			)
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.html.setup {}
			lspconfig.cssls.setup {}
			lspconfig.tailwindcss.setup {}
			lspconfig.jsonls.setup {}
			lspconfig.dockerls.setup {}
			lspconfig.docker_compose_language_service.setup {}
			lspconfig.marksman.setup {}
			lspconfig.sqlls.setup {}
			lspconfig.lua_ls.setup {
				settings = {
					Lua = { diagnostics = { globals = { 'vim' } } }, },
			}
			lspconfig.eslint.setup {}
			lspconfig.vtsls.setup {}
			lspconfig.ast_grep.setup {}
			lspconfig.pyright.setup {}
			lspconfig.intelephense.setup {}
		end,

	} }
