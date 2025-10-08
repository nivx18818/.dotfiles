return { -- Autoformat
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "Format",
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = false,
    -- format_on_save = function(bufnr)
    --   local disable_filetypes = {}
    --   if disable_filetypes[vim.bo[bufnr].filetype] then
    --     return nil
    --   else
    --     return {
    --       timeout_ms = 500,
    --       lsp_format = "fallback",
    --     }
    --   end
    -- end,
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    default_format_opts = {
      try_node_executable = true,
    },
    mason_install = true,
  },
}
