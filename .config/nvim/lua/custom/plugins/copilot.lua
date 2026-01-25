return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = function()
		require("copilot.api").status = require("copilot.status")
		return {
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = { accept = "<C-j>" },
			},
		}
	end,
}
