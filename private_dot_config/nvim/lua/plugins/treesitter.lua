return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = { "lua", "vimdoc", "javascript", "html", "typescript", "python" }
      return opts
    end,
  },
}
