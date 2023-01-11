local status, lg = pcall(require, "lazygit")
if (not status) then return end

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>g', '<Cmd>LazyGit<CR>', opts)
