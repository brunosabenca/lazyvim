return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "php" } },
  },
  {
    "williamboman/mason.nvim",
    version = "1.11.0",
    opts = {
      ensure_installed = {
        "phpactor",
      },
      servers = {
        phpactor = {
          filetypes = { "php" },
          settings = {
            phpactor = {
              language_server_phpstan = {
                enabled = true,
              },
              language_server_phpcs = {
                enabled = false,
              },
              language_server_psalm = {
                enabled = false,
              },
            },
          },
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "1.32.0",
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = {},
      },
    },
  },
}
