local status, config = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

local queries = require("nvim-treesitter.query")

config.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
  -- rainbow = {
  --   enable = true,
  --   max_file_lines = nil, -- Do not enable for files with more than n lines, int
  --   extended_mode = true,
  --   module_path = "rainbow.internal",
  --   is_supported = function(lang)
  --     return queries.get_query(lang, "parens") ~= nil
  --   end,
  --   colors = {
  --     "#cc241d",
  --     "#a89984",
  --     "#b16286",
  --     "#d79921",
  --     "#689d6a",
  --     "#d65d0e",
  --     "#458588",
  --   },
  --   termcolors = {
  --     "Red",
  --     "Green",
  --     "Yellow",
  --     "Blue",
  --     "Magenta",
  --     "Cyan",
  --     "White",
  --   },
  -- },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
