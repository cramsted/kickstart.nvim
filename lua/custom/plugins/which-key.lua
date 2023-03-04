return {
	"folke/which-key.nvim",
	config = function()
		require("which-key").setup()
		vim.o.timeout = true
		vim.o.timeoutlen = 1000
		local wk = require("which-key")
		wk.register({
			["<leader>"] = {
				s = { name = "[S]earch",},
				c = { name = "[C]onfig file(s)",},
				g = { name = "[G]it",},
				w = { name = "[W]orkspace",},
				d = { name = "[D]ocument",},
				r = { name = "[R]ename",},
			}
		})
	end
}
