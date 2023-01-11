local status, preview = pcall(require, "diffview")
if (not status) then return end

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>do', '<Cmd>DiffviewOpen<CR>', opts)
map('n', '<leader>dom', '<Cmd>DiffviewOpen master<CR>', opts)
map('n', '<leader>q', '<Cmd>DiffviewClose<CR>', opts)
