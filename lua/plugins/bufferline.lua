return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({})
		vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true })
		vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { silent = true })
	end,
}
