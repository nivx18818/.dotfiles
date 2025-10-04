return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup({
        disable_background = true,
        disable_float_background = true,
        dim_nc_background = true,
        highlight_groups = {
          LspReferenceText = { link = "Visual" },
          LspReferenceRead = { link = "Visual" },
          LspReferenceWrite = { link = "Visual" },
          NvimTreeNormal = { bg = "none" },
          NvimTreeNormalNC = { bg = "none" },
          SignColumn = { bg = "none" },
        }
      })
      vim.cmd.colorscheme "poimandres"
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
}
