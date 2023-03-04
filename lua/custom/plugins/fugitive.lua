return {
	'tpope/vim-fugitive',
	config = function ()
		vim.cmd [[nmap <leader>gh :diffget //3<CR> ]]
		vim.cmd [[nmap <leader>gf :diffget //2<CR> ]]
		vim.cmd [[nmap <leader>gs :G<CR> ]]
		vim.cmd [[nmap <leader>gc :G commit -m ""<left>]]
		vim.cmd [[nmap <leader>gu :G push<CR> ]]
	end
}
