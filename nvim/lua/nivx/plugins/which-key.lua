return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    preset = "helix",
    delay = 0,
    icons = {
      mappings = vim.g.have_nerd_font,
      keys = {},
      window = {
        border = "rounded",
        position = "bottom",
        padding = { 1, 2, 1, 2 },
        winblend = 0,
      },
      spec = {
        { '<leader>s', group = '[S]earch' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      },
    },
  },
}
