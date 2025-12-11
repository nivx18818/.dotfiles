return {
  { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs", -- Sets main module to use for opts
    opts = {
      ensure_installed = {
        "bash",
        "cpp",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "query",
        "vim",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "python",
        "json",
        "jsdoc",
        "tsx",
      },

      -- Autoinstall languages that are not installed
      auto_install = false,

      highlight = { enable = true },

      context_commentstring = {
        enable = false,
      },

      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    },
  },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
}
