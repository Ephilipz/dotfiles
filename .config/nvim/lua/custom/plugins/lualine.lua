return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = false,
	opts = {
		options = {
			theme = 'nightfox',
			component_separators = " | ",
			section_separators = { left = "", right = "" }
		},
		sections = {
			lualine_a = {
				{ "mode", separator = { left = "", right = "" }, right_padding = 2 },
			},
			-- we want to show full file path
			lualine_c = {
				{
					"filename",
					file_status = true, -- displays file status (readonly status, modified status)
					path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
				},
			},
			lualine_z = {
				{
					function()
						return "  " .. os.date("%R")
					end,
					separator = { right = "" },
				},
			},
		}
	}
}
