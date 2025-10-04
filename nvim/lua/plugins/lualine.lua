local function smart_filename()
  local fullpath = vim.fn.expand("%:p")
  if fullpath == "" then return "" end
  local filename = vim.fn.expand("%:t")
  local parent = vim.fn.fnamemodify(fullpath, ":h:t")

  local display = parent .. "/" .. filename

  local available = vim.fn.winwidth(0)
  if available < 120 then
    return filename
  else
    return display
  end
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "poimandres",
      disabled_filetypes = {},
      component_separators = {},
      section_separators = {},
      always_divide_middle = true,
      globalstatus = false,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        smart_filename,
        {
          function()
            local reg = vim.fn.reg_recording()
            if reg ~= "" then
              return "recording @" .. reg
            end
            return ""
          end,
        },
      },
      lualine_x = { "diagnostics", "diff", "filetype" },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}
