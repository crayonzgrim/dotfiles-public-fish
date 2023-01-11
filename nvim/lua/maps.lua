local keymap = vim.keymap

-- keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<Return>Enter")

-- ESC
keymap.set("i", "jk", "<ESC>")

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
keymap.set("n", "se", "<C-w>=")
keymap.set("n", "sx", ":close<CR>")

-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "<C-h>", "<C-w>h")
keymap.set("", "<C-k>", "<C-w>k")
keymap.set("", "<C-j>", "<C-w>j")
keymap.set("", "<C-l>", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Greatest remap ever ---> About paste
keymap.set("x", "<leader>p", '"_dP')

-- Next greatest remap ever ---> asbjornHanland
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

keymap.set("n", "<leader>d", '"_d')
keymap.set("v", "<leader>d", '"_d')

-- Move up & down with all of blocks
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor don't move when press 'J'
keymap.set("n", "J", "mzJ`z")

-- Cusor is always middle when search word
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- NvimTreeToggle
keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>")

-- Undo Tree
keymap.set("n", "<Leader>u", "<Cmd>UndotreeToggle<CR>")

-- Maximized window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
