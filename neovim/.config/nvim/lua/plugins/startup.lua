local header = {
	val = {
		[[                                                                     ]],
		[[       ████ ██████           █████      ██                     ]],
		[[      ███████████             █████                             ]],
		[[      █████████ ███████████████████ ███   ███████████   ]],
		[[     █████████  ███    █████████████ █████ ██████████████   ]],
		[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
		[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
		[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	},
	position = "left"
}

return {
	"goolord/alpha-nvim",
	lazy = false,
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")
		dashboard.file_icons.provider = "devicons"
		-- dashboard.section.header.val = header.val
		dashboard.section.header.opts.position = header.position
		alpha.setup(dashboard.opts)
	end,
}
