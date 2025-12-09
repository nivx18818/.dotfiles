return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  config = function(_, opts)
    require("flash").setup(opts);

    vim.api.nvim_set_hl(0, "FlashBackdrop", { fg = "#767c9d" })
    vim.api.nvim_set_hl(0, "FlashCurrent", { bg = "#ffffff", fg = "#1b1e28" })
    vim.api.nvim_set_hl(0, "FlashLabel", { bg = "#5de4c7", fg = "#ffffff", bold = true })
    vim.api.nvim_set_hl(0, "FlashMatch", { bg = "#272c3b", fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "FlashCursor", { reverse = true })
  end,
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<C-t>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
