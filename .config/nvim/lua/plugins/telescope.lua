-- Find, Filter, Preview, Pick
local M = {
	"telescope.nvim",
	dependencies = {
		-- project management
		{
			"ahmedkhalf/project.nvim",
			opts = {
				manual_mode = true,
			},
			event = "VeryLazy",
			config = function(_, opts)
				require("project_nvim").setup(opts)
				require("lazyvim.util").on_load("telescope.nvim", function()
					require("telescope").load_extension("projects")
				end)
			end,
			keys = {
				{ "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
			},
		},
	},
	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = require("telescope.actions").move_selection_next,
					["<C-k>"] = require("telescope.actions").move_selection_previous,
				},
			},
		},
	},
}

return M
