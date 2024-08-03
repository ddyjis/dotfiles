return {
  -- session manager
  {
    "Shatur/neovim-session-manager",
    lazy = false,
  },
  -- quality of life
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  -- keymaps
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps",
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
    keys = {
      {
        "<C-_>",
        function() require("Comment.api").toggle.linewise.current() end,
        mode = "n",
        opts = { noremap = true, silent = true },
        description = "Toggle comment on current line",
      },
      {
        "<C-_>",
        function() require("Comment.api").toggle.linewise(vim.fn.visualmode()) end,
        mode = "x",
        opts = { noremap = true, silent = true },
        description = "Toggle comment on current block",
      }
    }
  },
  {
    "mrjones2014/legendary.nvim",
    lazy = false,
    priority = 10000,
    opts = {
      keymaps = {
        {
          "<C-c>",
          '"+y',
          mode = "v",
          opts = { noremap = true, silent = true },
          description = "Copy to system clipboard",
        },
        {
          "<C-s>",
          ":w<CR>",
          mode = "n",
          opts = { noremap = true, silent = true },
          description = "Save buffer",
        },
        {
          ";",
          ":",
          mode = "n",
          opts = { noremap = true, silent = true },
          description = "Enter command mode",
        },
        {
          ";",
          ":",
          mode = "v",
          opts = { noremap = true, silent = true },
          description = "Enter command mode",
        },
        {
          "jj",
          "<Esc>",
          mode = "i",
          opts = { noremap = true, silent = true },
          description = "Exit insert mode",
        },
      },
    },
  },
}
