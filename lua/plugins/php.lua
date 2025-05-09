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
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = {
          "docker_php_cs_fixer",
        },
      },
      formatters = {
        docker_php_cs_fixer = {
          command = "docker",
          args = {
            "compose",
            "exec",
            '--env="XDEBUG_MODE=off"',
            "-T",
            "goodlord-core",
            "vendor/bin/php-cs-fixer",
            "fix",
            "$RELATIVE_FILEPATH",
          },
          cwd = require("conform.util").root_file({ "docker-compose.yaml" }),
          stdin = false,
        },
      },
    },
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
