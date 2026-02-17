return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
    init = function()
      ---@type rainbow_delimiters.config
      vim.g.rainbow_delimiters = {
        highlight = {
          "RainbowDelimiter1",
          "RainbowDelimiter2",
          "RainbowDelimiter3",
          "RainbowDelimiter4",
        },
      }

      local function set_rainbow_hls()
        vim.api.nvim_set_hl(0, "RainbowDelimiter1", { fg = "#E6B422" })
        vim.api.nvim_set_hl(0, "RainbowDelimiter2", { fg = "#C70067" })
        vim.api.nvim_set_hl(0, "RainbowDelimiter3", { fg = "#00a960" })
        vim.api.nvim_set_hl(0, "RainbowDelimiter4", { fg = "#FC7482" })
      end

      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_rainbow_hls })
      set_rainbow_hls()
    end,
  },
}
