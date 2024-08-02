require("sonarlint").setup {
  server = {
    cmd = {
      "sonarlint-language-server",
      "stdio",
      "-analyzers",
      vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarpython.jar",
      vim.fn.expand "$MASON/share/sonarlint-analyzers/sonariac.jar",
      vim.fn.expand "$MASON/share/sonarlint-analyzers/sonartext.jar",
      vim.fn.expand "$MASON/share/sonarlint-analyzers/sonargo.jar",
    },
  },
  filetypes = {
    "python",
    "yaml",
    "go",
  },
}
