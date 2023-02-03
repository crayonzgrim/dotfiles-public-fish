vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
vim.opt.lazyredraw = true
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.completeopt = { "menuone", "menuone", "noselect" } -- mostly just for cmp
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete ( in milliseconds)
vim.opt.updatetime = 100 -- faster completion (40000ms default)
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = true -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

-- Remember history
vim.opt.history = 100
