return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "cs",
        normal_cur = "css",
        normal_line = "cS",
        normal_cur_line = "cSS",
        visual = "S",
        visual_line = "gS",
        delete = "ds",
        change = "ys",
        change_line = "yS",
      },
    })
  end,
}
