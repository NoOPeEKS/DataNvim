return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "python", "markdown", "markdown_inline" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
