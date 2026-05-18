return {
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "kanso-zen" },
  },
  {
    "afonsofrancof/OSC11.nvim",
    opts = {
      -- Function to call when switching to dark theme
      on_dark = function()
        vim.opt.background = "dark"
        vim.cmd("colorscheme kanso-zen")
      end,
      -- Function to call when switching to light theme
      on_light = function()
        vim.cmd("colorscheme kanso-pearl")
      end,
    },
  },
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          header = [[
██████╗  ██████╗  ██╗   ██╗    ██╗ ██╗ ███████╗
██╔══██╗ ██╔══██╗ ╚██╗ ██╔╝    ██║ ██║ ██╔════╝
██║  ██║ ██║  ██║  ╚████╔╝     ██║ ██║ ███████╗
██║  ██║ ██║  ██║   ╚██╔╝ ██   ██║ ██║ ╚════██║
██████╔╝ ██████╔╝    ██║  ╚█████╔╝ ██║ ███████║
╚═════╝  ╚═════╝     ╚═╝   ╚════╝  ╚═╝ ╚══════╝]],
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
