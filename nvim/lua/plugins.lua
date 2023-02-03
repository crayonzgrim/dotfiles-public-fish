local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- packer

	-- theme
	use({ "catppuccin/nvim", as = "catppuccin" })
	-- use({ "svrana/neosolarized.nvim", requires = { "tjdevries/colorbuddy.nvim" } })

	-- Tmux & split window navigation
	-- use("christoomey/vim-tmux-navigator")

	use("szw/vim-maximizer") -- Maximizes and restores current window

	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- LSP UIs
	use("folke/lsp-colors.nvim")
	use("nvim-lualine/lualine.nvim") -- statusline
	use("kyazdani42/nvim-web-devicons")
	use("onsails/lspkind.nvim") -- vscode-like pictogram

	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")

	-- Snippets
	use("rafamadriz/friendly-snippets")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")

	use("jose-elias-alvarez/typescript.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- explorer files
	use({
		"nvim-tree/nvim-tree.lua",
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow") -- Find bracket scope

	use("nvim-lua/plenary.nvim") -- Common utilities
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" }) -- tab

	use("norcalli/nvim-colorizer.lua")

	-- prettier & lint
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- GitSigns
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim")
	use("kdheepak/lazygit.nvim") -- lazygit
	use("sindrets/diffview.nvim") -- diff view

	-- mason && installing lsp servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp server
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP

	-- Comment
	use({ "numToStr/Comment.nvim", requires = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	} })

	-- multi cursor
	use("mg979/vim-visual-multi")

	-- Undo tree
	use("mbbill/undotree")

	-- single toggle term
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	use("folke/todo-comments.nvim")

	-- fold lines
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })

	-- emmet vim for html -> If you want live-server, you can use live-server .
	use("mattn/emmet-vim")

	--  daps for debug
	-- use 'mfussenegger/nvim-dap'
	-- use 'rcarriga/nvim-dap-ui'
	-- use 'ldelossa/nvim-dap-projects'
end)
