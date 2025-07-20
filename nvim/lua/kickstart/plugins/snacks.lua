return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			picker = { enabled = true },
			scroll = { enabled = true },
			explorer = { enabled = false },
			terminal = { enabled = false },
			win = { enabled = false },
			statuscolumn = { enabled = false },
			scratch = { enabled = false },
			rename = { enabled = false },
			profiler = { enabled = false },
			notify = { enabled = false },
			layout = { enabled = false },
			indent = { enabled = false },
			gitbrowse = { enabled = false },
			debug = { enabled = false },
			bufdelete = { enabled = false },
			styles = {
				zen = {
					enter = true,
					fixbuf = false,
					minimal = true,
					width = 100,
					height = 0,
				},
			},
		},
		keys = {
			-- find
			{ "<leader>sn", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Search Config File" },
			-- { "sf",         function() Snacks.picker.smart() end,                                   desc = "Smart Find Files" },
			{ "<leader>sf", function() Snacks.picker.files() end,                                   desc = "Search Files" },
			{ "<leader>sg", function() Snacks.picker.git_files() end,                               desc = "Search Git Files" },
			-- git
			{ "<leader>gb", function() Snacks.picker.git_branches() end,                            desc = "Git Branches" },
			{ "<leader>gl", function() Snacks.picker.git_log() end,                                 desc = "Git Log" },
			{ "<leader>gL", function() Snacks.picker.git_log_line() end,                            desc = "Git Log Line" },
			{ "<leader>gs", function() Snacks.picker.git_status() end,                              desc = "Git Status" },
			{ "<leader>gS", function() Snacks.picker.git_stash() end,                               desc = "Git Stash" },
			{ "<leader>gd", function() Snacks.picker.git_diff() end,                                desc = "Git Diff (Hunks)" },
			{ "<leader>gf", function() Snacks.picker.git_log_file() end,                            desc = "Git Log File" },
			-- Grep
			{ "<leader>sg", function() Snacks.picker.grep() end,                                    desc = "Grep" },
			{ "<leader>sw", function() Snacks.picker.grep_word() end,                               desc = "Visual selection or word", mode = { "n", "x" } },
			-- search
			{ "<leader>sk", function() Snacks.picker.keymaps() end,                                 desc = "Keymaps" },
			{ "<leader>sm", function() Snacks.picker.marks() end,                                   desc = "Marks" },
			-- LSP
			{ "gd",         function() Snacks.picker.lsp_definitions() end,                         desc = "Goto Definition" },
			{ "gD",         function() Snacks.picker.lsp_declarations() end,                        desc = "Goto Declaration" },
			{ "grr",        function() Snacks.picker.lsp_references() end,                          nowait = true,                     desc = "References" },
			{ "gI",         function() Snacks.picker.lsp_implementations() end,                     desc = "Goto Implementation" },
			{ "<leader>z",  function() Snacks.zen() end,                                            desc = "Toggle Zen Mode" },
		},
	},
}
