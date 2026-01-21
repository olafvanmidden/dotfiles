return {
  {
    "nvim-mini/mini.hipatterns",
    opts = function(_, opts)
      table.insert(opts.tailwind.ft, "php")
      return opts
    end,
  },
}
