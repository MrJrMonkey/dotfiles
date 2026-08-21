return {
	"goolord/alpha-nvim",
	-- dependencies = { 'nvim-mini/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-mini/mini.icons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")
		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
		}

		-- dashboard.file_icons.provider = "devicons"

		alpha.setup(dashboard.opts)
	end,
}
