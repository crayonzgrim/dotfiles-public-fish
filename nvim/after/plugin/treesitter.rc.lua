local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"toml",
		"fish",
		"php",
		"json",
		"yaml",
		"swift",
		"css",
		"html",
		"lua",
		"html",
		"markdown",
		"svelte",
		"graphql",
		"vim",
		"dockerfile",
		"gitignore",
	},
	auto_install = true,
	autotag = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascriptreact", "javascript", "typescriptreact", "typescript" }
