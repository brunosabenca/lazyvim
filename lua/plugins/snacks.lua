return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        formatters = {
          file = {
            -- filename_first = true, -- display filename before the file path
            truncate = 60, -- truncate the file path to 60 characters
          },
          grep = {
            -- filename_first = true, -- display filename before the file path
            truncate = 60, -- truncate the file path to 60 characters
          },
        },
      },
    },
  },
}
