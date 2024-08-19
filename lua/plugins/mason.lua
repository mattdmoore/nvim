-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    url = "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    enabled = false,
    ft = { "python", "yaml", "helm", "go" },
    enabled = false,
    config = function()
      require("sonarlint").setup {
        server = {
          cmd = {
            "sonarlint-language-server",
            "-stdio",
            "-analyzers",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarpython.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonariac.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonartext.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonargo.jar",
          },
          settings = {
            sonarlint = {
              rules = {},
            },
          },
        },
        filetypes = {
          "python",
          "yaml",
          "helm",
          "go",
        },
      }
    end,
  },
}
