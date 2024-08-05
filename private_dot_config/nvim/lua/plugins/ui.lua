return {
	-- colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
	-- bufferline
	{
		"akinsho/bufferline.nvim",
		version = "*",
		lazy = false,
		dependencies = "nvim-tree/nvim-web-devicons",
		keys = {
			{ "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
			{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
			{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
			{ "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
			{ "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
			{ "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
			{ "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
		},
		config = function()
			local tokyonight = require("tokyonight.colors.storm")
			local global_bg = tokyonight.bg
			local inactive_bg = tokyonight.terminal_black
			local inactive_fg = tokyonight.fg_dark
			local active_bg = tokyonight.dark3
			local active_fg = tokyonight.fg
			local modified = tokyonight.yellow
			require("bufferline").setup({
				highlights = {
					fill = { bg = global_bg },
					background = { fg = inactive_fg, bg = inactive_bg },
					buffer_selected = { fg = active_fg, bg = active_bg },
					modified = { fg = modified, bg = inactive_bg },
					modified_selected = { fg = modified, bg = active_bg },
					-- separator is the invert of what I intuitively think what it is
					separator = { bg = inactive_bg, fg = global_bg },
					separator_selected = { bg = active_bg, fg = global_bg },
				},
				options = {
					always_show_bufferline = true,
					separator_style = "slant",
					show_close_icon = false,
					show_buffer_close_icons = false,
				},
			})
		end,
	},
	-- statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		init = function()
			vim.g.lualine_laststatus = vim.o.laststatus
			if vim.fn.argc(-1) > 0 then
				-- set an empty statusline till lualine loads
				vim.o.statusline = " "
			else
				-- hide the statusline on the starter page
				vim.o.laststatus = 0
			end
		end,
		opts = function()
			local tokyonight = require("tokyonight.colors.storm")
			local custom_tokyonight = require("lualine.themes.tokyonight")
			custom_tokyonight.normal.c.bg = tokyonight.bg
			local opts = {
				options = {
					theme = custom_tokyonight,
					section_separators = "",
					component_separators = "",
				},
				sections = {
					lualine_a = { { "mode", right_padding = 2 } },
					lualine_b = { "filename", "branch" },
					lualine_c = {},
					lualine_x = {},
					lualine_y = { "filetype", "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
			}
			return opts
		end,
	},
	-- notifications
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opt = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
		},
		config = function(_, opts)
			if vim.o.filetype == "lazy" then
				vim.cmd([[messages clear]])
			end
			require("noice").setup(opts)
		end,
	},
	-- dashboard
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			-- Generated from https://patorjk.com/software/taag/#p=display&v=0&c=lua&f=ANSI%20Shadow&t=tony%20li
			local logo = [[

████████╗ ██████╗ ███╗   ██╗██╗   ██╗    ██╗     ██╗
╚══██╔══╝██╔═══██╗████╗  ██║╚██╗ ██╔╝    ██║     ██║
   ██║   ██║   ██║██╔██╗ ██║ ╚████╔╝     ██║     ██║
   ██║   ██║   ██║██║╚██╗██║  ╚██╔╝      ██║     ██║
   ██║   ╚██████╔╝██║ ╚████║   ██║       ███████╗██║
   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝   ╚═╝       ╚══════╝╚═╝

]]
			logo = string.rep("\n", 8) .. logo .. "\n\n"

			require("dashboard").setup({
				config = {
					header = vim.split(logo, "\n"),
				},
			})
		end,
	},
}
