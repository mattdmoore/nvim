return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff" },
      ansible = { "ansiblefmt" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
    },
  },
}
