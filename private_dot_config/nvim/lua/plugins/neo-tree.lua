return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.close_if_last_window = false
    opts.window = { position = "right" }
  end,
}
