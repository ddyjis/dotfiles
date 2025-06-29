return {
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  {
    "f-person/auto-dark-mode.nvim",
    priority = 1000,
    config = function()
      require("auto-dark-mode").setup({
        update_interval = 1000,
        set_dark_mode = function()
          vim.o.background = "dark"
          vim.cmd("colorscheme gruvbox")
        end,
        set_light_mode = function()
          vim.o.background = "light"
          vim.cmd("colorscheme gruvbox")
        end,
      })
      require("auto-dark-mode").init()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },
}
