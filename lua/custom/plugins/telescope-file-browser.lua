return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		-- To get telescope-file-browser loaded and working with telescope,
		-- you need to call load_extension, somewhere after setup function:
		require("telescope").load_extension "file_browser"
		vim.api.nvim_set_keymap(
			"n",
			"<space>fB",
			":Telescope file_browser\n",
			{ noremap = true }
		)
		-- open file_browser with the path of the current buffer
		vim.api.nvim_set_keymap(
			"n",
			"<space>fb",
			":Telescope file_browser path=%:p:h select_buffer=true\n",
			{ noremap = true }
		)
	end
}
