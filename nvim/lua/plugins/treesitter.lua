return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'html', 'css', 'javascript', 'typescript', 'python', 'json', 'jsdoc', 'tsx' },
      -- Autoinstall languages that are not installed
      auto_install = true,

      autopairs = {
        enable = true,
      },

      rainbow = {
        enable = false,
        extended_mode = false,
        max_file_lines = nil,
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },

      indent = { enable = true, disable = { 'ruby' } },

      context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
          typescript = { __default = "// %s", __multiline = "/* %s */" },
          css = "/* %s */",
          scss = { __default = "// %s", __multiline = "/* %s */" },
          php = { __default = "// %s", __multiline = "/* %s */" },
          html = "<!-- %s -->",
          svelte = "<!-- %s -->",
          vue = "<!-- %s -->",
          handlebars = "{{! %s }}",
          glimmer = "{{! %s }}",
          graphql = "# %s",
          lua = { __default = "-- %s", __multiline = "--[[ %s ]]" },
          vim = '" %s',
          tsx = {
            __default = "// %s",
            __multiline = "/* %s */",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
            jsx_attribute = { __default = "// %s", __multiline = "/* %s */" },
            comment = { __default = "// %s", __multiline = "/* %s */" },
            call_expression = { __default = "// %s", __multiline = "/* %s */" },
            statement_block = { __default = "// %s", __multiline = "/* %s */" },
            spread_element = { __default = "// %s", __multiline = "/* %s */" },
          },
          javascript = {
            __default = "// %s",
            __multiline = "/* %s */",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
            jsx_attribute = { __default = "// %s", __multiline = "/* %s */" },
            comment = { __default = "// %s", __multiline = "/* %s */" },
            call_expression = { __default = "// %s", __multiline = "/* %s */" },
            statement_block = { __default = "// %s", __multiline = "/* %s */" },
            spread_element = { __default = "// %s", __multiline = "/* %s */" },
          },
        },
      },

      autotag = {
        enable = true,
      },
    },
  },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'nvim-treesitter/nvim-treesitter-context' },
  { 'nvim-treesitter/playground' }
}
