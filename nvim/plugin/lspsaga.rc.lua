local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  },
  server_filetype_map = {
    typescript = 'typescript',
    javascript = 'javascript'
  }
}

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', ']e', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)

vim.keymap.set('n', '<C-k>', '<cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga show_cursor_diagnostics<CR>', opts)

vim.keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', '<leader>h', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', '<C-a>', '<cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)

-- code action
-- local codeaction = require("lspsaga.codeaction")
-- vim.keymap.set("n", "<leader>ca", function() codeaction:code_action() end, { silent = true })
-- vim.keymap.set("v", "<leader>ca", function()
--   vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
--   codeaction:range_code_action()
-- end, { silent = true })
