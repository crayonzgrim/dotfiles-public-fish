local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	ui = {
		winblend = 10,
		border = "rounded",
		colors = {
			normal_bg = "#002b36",
		},
	},
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

vim.keymap.set("n", "<C-k>", "<cmd>Lspsaga hover_doc<CR>", opts)
-- vim.keymap.set("n", "K", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
vim.keymap.set("n", "K", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "<leader>h", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.keymap.set("n", "<C-a>", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
