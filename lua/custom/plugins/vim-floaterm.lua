return {
	"voldikss/vim-floaterm",
	config = function ()
		-- vim.keymap.set({'n', 'v'}, '<F10>', ':FloatermToggle<CR>', {desc="[T]oggle [T]erm"})
		-- vim.keymap.set({'n', 'v'}, '<leader>tn', ':FloatermNext<CR>', {desc="[T]erminal [N]ext"})
		-- vim.keymap.set({'n', 'v'}, '<leader>tp', ':FloatermPrev<CR>', {desc="[T]erminal [P]revious"})
		vim.keymap.set({'n', 'v'}, '<leader>to', ':FloatermNew<CR>', {desc="[T]erminal [O]pen"})

vim.cmd[[ nnoremap   <silent>   <F6>   :FloatermToggle<CR> ]]
vim.cmd[[ tnoremap   <silent>   <F6>   <C-\><C-n>:FloatermToggle<CR> ]]
vim.cmd[[ nnoremap   <silent>   <F7>    :FloatermPrev<CR> ]]
vim.cmd[[ tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermPrev<CR> ]]
vim.cmd[[ nnoremap   <silent>   <F8>    :FloatermNext<CR> ]]
vim.cmd[[ tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermNext<CR> ]]
vim.cmd[[ nnoremap   <silent>   <F9>   :FloatermKill<CR> ]]
vim.cmd[[ tnoremap   <silent>   <F9>   <C-\><C-n>:FloatermKill<CR> ]]
	end
}
