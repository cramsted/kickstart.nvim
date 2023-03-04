return {
	"nvim-telescope/telescope-project.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-telescope/telescope-file-browser.nvim" },
	config = function()
		require'telescope'.load_extension('project')
		vim.api.nvim_set_keymap(
			'n',
			'<C-p>',
			":lua require'telescope'.extensions.project.project{}<CR>",
			{noremap = true, silent = true, desc = "Project Menu"}
		)
	end
}
