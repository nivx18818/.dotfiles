return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  lazy = false,
  keys = {
    { "<leader>e",  "<cmd>Neotree reveal<cr>", desc = "Reveal Explorer" },
    { "<leader>fe", "<cmd>Neotree focus<cr>",  desc = "Focus Explorer" },
  },
  opts = {
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,

    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      use_libuv_file_watcher = true,
    },

    window = {
      position = "float",
      width = 32,
      popup = {
        size = {
          height = "17",
          width = "45",
        },
        position = "50%",
        border = "rounded",
        title = " 󰉓 Explorer ",
        title_pos = "center",
      },
      mappings = {
        ["<space>"] = "none",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<cr>"] = "open",
        ["P"] = { "toggle_preview", config = { use_float = true } },
        ["C"] = "close_node",
        ["R"] = "refresh",
        ["a"] = { "add", config = { show_path = "relative" } },
        ["d"] = "delete",
        ["r"] = "rename",
        ["y"] = "copy_to_clipboard",
        ["x"] = "cut_to_clipboard",
        ["p"] = "paste_from_clipboard",
        ["q"] = "close_window",
        ["<S-Tab>"] = "prev_source",
        ["<Tab>"] = "next_source",
      }
    },

    sources = { "filesystem", "buffers", "git_status" },
  },
}
