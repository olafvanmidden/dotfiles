return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      vim.o.background = "light"

      require("vscode").setup({
        style = "light",
      })

      vim.cmd.colorscheme("vscode")
    end,
  },
}
