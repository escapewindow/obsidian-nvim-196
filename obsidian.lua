return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	-- event = { "BufReadPre path/to/my-vault/**.md" },
	-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
	event = {
		"BufReadPre " .. vim.fn.expand("~") .. "/path/to/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/path/to/**.md",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
		"nvim-telescope/telescope.nvim",
		"godlygeek/tabular",
	},
	opts = {
		dir = "~/path/to/", -- no need to call 'vim.fn.expand' here
		-- I want to control my own frontmatter
		disable_frontmatter = true,
		-- Don't create arbitrarily named files
		note_id_func = function(title)
			return title
		end,
	},
}
