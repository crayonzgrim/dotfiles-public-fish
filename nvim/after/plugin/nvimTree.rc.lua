local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

-- Recommanded settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
  sort_by = "case_sensitive",
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  disable_netrw = false,
  hijack_netrw = true,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  filters = {
    -- custom = { ".git" },
  },
  open_on_tab = false,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = true,
  update_cwd = true,
  -- update_to_buf_dir = {
  --   enable = true,
  --   auto_open = true,
  -- },
  renderer = {
    add_trailing = false,
    group_empty = true,
    highlight_git = false,
    highlight_opened_files = "1",
    root_folder_modifier = ":t",
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "⭕",
          arrow_closed = "🔴",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = "💡",
      info = "ℹ️",
      warning = "⚠️",
      error = "❌", -- 🐞
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- system_open = {
  --   cmd = nil,
  --   args = {},
  -- },
  git = {
    enable = false,
    -- ignore = false,
    timeout = 500,
  },
  log = {
    enable = true,
    types = {
      diagnostics = true
    }
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  view = {
    side = "left",
    adaptive_size = true,
    width = 40,
    hide_root_folder = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
        { key = "v", cb = tree_cb("vsplit") },
        { key = "s", cb = tree_cb("split") },
        { key = "u", action = "dir_up" }
      },
    },
    number = false,
    relativenumber = false,
  },
})
