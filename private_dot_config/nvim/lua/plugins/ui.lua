return {
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "kanagawa" },
  },
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          keys = {
            { icon = "", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = "",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = "", key = "s", desc = "Restore Session", section = "session" },
            { icon = "", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = "", key = "q", desc = "Quit", action = ":qa" },
          },
          header = [[
██████╗ ██████╗ ██╗   ██╗   ██╗██╗███████╗
██╔══██╗██╔══██╗╚██╗ ██╔╝   ██║██║██╔════╝
██║  ██║██║  ██║ ╚████╔╝    ██║██║███████╗
██║  ██║██║  ██║  ╚██╔╝██   ██║██║╚════██║
██████╔╝██████╔╝   ██║ ╚█████╔╝██║███████║
╚═════╝ ╚═════╝    ╚═╝  ╚════╝ ╚═╝╚══════╝]],
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup", icon = "" },
        },
      },
      picker = {
        sources = {
          grep = {
            cmd = {
              "ag",
              "--vimgrep", -- Output vim-friendly format
              "--smart-case", -- Smart case matching
              "--hidden", -- Include hidden files
              "--follow", -- Follow symlinks
              "--skip-vcs-ignores", -- Skip VCS ignored files
            },
            live = true,
            supports_live = true,
          },
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
  },
}
