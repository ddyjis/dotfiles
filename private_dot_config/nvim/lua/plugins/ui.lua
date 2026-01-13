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
