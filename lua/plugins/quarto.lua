return {
	"quarto-dev/quarto-nvim",
	lazy = false,
	ft = { "quarto", "markdown" },
	dev = false,
	config = function()
		require("quarto").setup({
			lspFeatures = {
				languages = { "r", "python", "rust" },
				chunks = "all",
				diagnostics = {
					enabled = true,
					triggers = { "BufWritePost" },
				},
				completion = {
					enabled = true,
				},
			},
			keymap = {
				hover = "H",
				definition = "gd",
				rename = "<leader>rn",
				references = "gr",
				format = "<leader>gf",
			},
			codeRunner = {
				enabled = true,
				default_method = "molten",
			},
		})
	end,
	dependencies = {
		"jmbuhr/otter.nvim",
		opts = {},
	},
}
