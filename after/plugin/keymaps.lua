-- [[ Keyboard shortcuts ]]
-- moving between windows
vim.cmd [[nnoremap <leader>j <C-W>j]]
vim.cmd [[nnoremap <leader>k <C-W>k]]
vim.cmd [[nnoremap <leader>l <C-W>l]]
vim.cmd [[nnoremap <leader>h <C-W>h]]
-- resizing windows
-- vim.cmd [[noremap <silent> <C-Left> :vertical resize +3<CR>]]
-- vim.cmd [[noremap <silent> <C-Right> :vertical resize -3<CR>]]
-- vim.cmd [[noremap <silent> <C-Up> :resize -3<CR>]]
-- vim.cmd [[noremap <silent> <C-Down> :resize +3<CR>}]]
vim.keymap.set({'n', 'v'}, '<C-Left>', ":vertical resize +3<CR>", {desc = "Move window border left"})
vim.keymap.set({'n', 'v'}, '<C-Right>', ":vertical resize -3<CR>", {desc = "Move window border right"})
vim.keymap.set({'n', 'v'}, '<C-Up>', ": resize -3<CR>", {desc = "Move window border up"})
vim.keymap.set({'n', 'v'}, '<C-Down>', ": resize +3<CR>", {desc = "Move window border down"})
-- split the current buffer
vim.cmd [[noremap <leader>\ :vsp<CR>]]
vim.cmd [[noremap <leader>- :sp<CR>]]
-- Nvim config quick access
vim.keymap.set('n', '<leader>R', ":luafile %<CR>", { desc = "[R]un current lua file" })
vim.keymap.set('n', '<leader>ci', ":e ~/.config/nvim/init.lua<CR>", { desc = "Open [C]onfig file [i]nit.lua" })
vim.keymap.set('n', '<leader>cP', ":e ~/.config/nvim/lua/custom/plugins/", { desc = "Open [C]onfig directory for [p]lugins" })
vim.keymap.set('n', '<leader>cp', ":e ~/.config/nvim/after/plugin/plugin-configs.lua<CR>", { desc = "Open [C]onfig file for [p]lugins" })
vim.keymap.set('n', '<leader>ck', ":e ~/.config/nvim/after/plugin/keymaps.lua<CR>", { desc = "Open [C]onfig file [k]eymaps.lua" })
vim.keymap.set('n', '<leader>cd', ":e ~/.config/nvim/after/plugin/autocmds.lua<CR>", { desc = "Open [C]onfig file autocm[d]s.lua" })
vim.keymap.set('n', '<leader>cs', ":e ~/.config/nvim/after/plugin/settings.lua<CR>", { desc = "Open [C]onfig file [s]ettings.lua" })
vim.keymap.set('n', '<leader>cc', ":e ~/.config/nvim/after/plugin/colors.lua<CR>", { desc = "Open [C]onfig file [c]olors.lua" })
-- write shortcut
vim.keymap.set({'n', 'v'}, '<leader>w', ":w<CR>")
-- select all
vim.cmd [[ nmap <leader>V ggVG ]]
-- find and replace all matching instances of selected text
vim.cmd [[vnoremap <C-r> "hy:%s/<C-r>h/<C-r>h/g<left><left>]]
-- search visually selected text
vim.cmd [[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]]
-- remove highlight from searched text
vim.cmd [[nmap <leader>/ :noh<CR>]]
-- force quit vim/current window
vim.keymap.set({ 'n', 'v' }, '<C-q>', ":q!<CR>")
-- auto format
-- vim.keymap.set({ 'n', 'v' }, '<Leader>x', vim.lsp.buf.format, bufopts)
