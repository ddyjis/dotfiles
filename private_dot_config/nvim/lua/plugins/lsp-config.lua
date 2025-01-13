return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "pyright", "tailwindcss" },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "stylua", "shfmt", "lua-language-server" },
    },
  },
}
