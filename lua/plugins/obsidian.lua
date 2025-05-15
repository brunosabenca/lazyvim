return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre "
      .. vim.fn.expand("~")
      .. "/Insync/trueheikai@gmail.com/Google Drive/lib/goodlord/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/Insync/trueheikai@gmail.com/Google Drive/lib/goodlord/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "goodlord",
        path = "~/Insync/trueheikai@gmail.com/Google Drive/lib/goodlord",
      },
    },
  },
}
