return {
	"benlubas/molten-nvim",
	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	lazy = false,
	build = ":UpdateRemotePlugins",
	init = function()
		-- this is an example, not a default. Please see the readme for more configuration options
		vim.g.molten_image_provider = "image.nvim"
		vim.g.molten_output_win_max_height = 12
		vim.g.molten_virt_text_output = true
		vim.g.molten_virt_lines_off_by_1 = true
		vim.g.molten_virt_text_max_lines = 1
	end,
}
