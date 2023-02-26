-- [[ Settings ]]
vim.cmd [[set relativenumber]]
vim.o.hlsearch = true -- overriding the default for kickstart.nvim
vim.cmd [[set noswapfile]]
vim.cmd [[set nobackup]]
vim.cmd [[set noerrorbells]]
vim.cmd [[set expandtab]]
vim.cmd [[set smarttab]]
vim.cmd [[set shiftwidth=2]]
vim.cmd [[set undofile]]
vim.cmd [[set tabstop=2 softtabstop=2]]
vim.cmd [[set splitbelow  splitright]]
vim.cmd [[set smartindent]]
vim.cmd [[set autoread]]
vim.cmd [[set updatetime=50]]
-- handles tabs and spaces correctly for pasted in code
vim.cmd [[set pastetoggle=<F2>]]
-- closing bracket support
vim.cmd [[inoremap { {}<Esc>ha]]
vim.cmd [[inoremap ( ()<Esc>ha]]
vim.cmd [[inoremap [ []<Esc>ha]]
vim.cmd [[inoremap " ""<Esc>ha]]
vim.cmd [[inoremap ' ''<Esc>ha]]
vim.cmd [[inoremap ` ``<Esc>ha]]
vim.cmd[[set clipboard=unnamedplus]]
-- WSL yank support
vim.cmd [[
  let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
  if executable(s:clip)
      augroup WSLYank
          autocmd!
          autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
      augroup END
  endif
]]


-- [[ Keyboard shortcuts ]]
-- moving between windows
vim.cmd [[nnoremap <leader>j <C-W>j]]
vim.cmd [[nnoremap <leader>k <C-W>k]]
vim.cmd [[nnoremap <leader>l <C-W>l]]
vim.cmd [[nnoremap <leader>h <C-W>h]]
-- resizing windows
vim.cmd [[noremap <silent> <C-Left> :vertical resize -3<CR>]]
vim.cmd [[noremap <silent> <C-Right> :vertical resize +3<CR>]]
vim.cmd [[noremap <silent> <C-Up> :resize +3<CR>]]
vim.cmd [[noremap <silent> <C-Down> :resize -3<CR>}]]
-- split the current buffer
vim.cmd [[noremap <leader>\ :vsp<CR>]]
vim.cmd [[noremap <leader>- :sp<CR>]]
-- Nvim config quick access
vim.keymap.set('n', '<leader>R', ":luafile %<CR>", { desc = "[R]un current lua file" })
vim.keymap.set('n', '<leader>ci', ":e ~/.config/nvim/init.lua<CR>", { desc = "Open [C]onfig file [i]nit.lua" })
vim.keymap.set('n', '<leader>cp', ":e ~/.config/nvim/lua/custom/plugins.lua<CR>", { desc = "Open [C]onfig file [p]lugins.lua" })
vim.keymap.set('n', '<leader>cd', ":e ~/.config/nvim/lua/core/defaults.lua<CR>", { desc = "Open [C]onfig file [d]efaults.lua" })
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
-- tabnine
-- NOTE: removed temporarily until config is more put together
-- require('tabnine').setup({
--   disable_auto_comment=true,
--   accept_keymap="<leader>ai",
--   dismiss_keymap = "<C-]>",
--   debounce_ms = 800,
--   suggestion_color = {gui = "#808080", cterm = 244},
--   execlude_filetypes = {"TelescopePrompt"}
-- })
-- easymotion
-- vim.cmd [[map  <Leader>f <Plug>(easymotion-bd-f) ]]
-- vim.cmd [[nmap <Leader>f <Plug>(easymotion-overwin-f)]]
-- telescope-file-browser
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
-- require("telescope").load_extension "file_browser"
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fB",
--   ":Telescope file_browser\n",
--   { noremap = true }
-- )
-- open file_browser with the path of the current buffer
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fb",
--   ":Telescope file_browser path=%:p:h select_buffer=true\n",
--   { noremap = true }
-- )
-- symbols-outline.nvim
-- require("symbols-outline").setup()
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>so",
--   ":SymbolsOutline\n",
--   { noremap = true }
-- )
--  vim-fugitive
-- vim.cmd [[nmap <leader>gh :diffget //3<CR> ]]
-- vim.cmd [[nmap <leader>gf :diffget //2<CR> ]]
-- vim.cmd [[nmap <leader>gs :G<CR> ]]
-- vim.cmd [[nmap <leader>gc :G commit -m ""<left> ]]
-- vim.cmd [[nmap <leader>gu :G push<CR> ]]
-- nvim-ts-autotag
-- for completing tags like <div></div>
-- TODO: not working
-- require('nvim-ts-autotag').setup()
-- vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics,
--     {
--         underline = true,
--         virtual_text = {
--             spacing = 5,
--             severity_limit = 'Warning',
--         },
--         update_in_insert = true,
--     }
-- )
-- todo-comments.nvim
-- require("todo-comments").setup()
-- alpha-nvim
-- TODO: need to update the keyoard shortcuts on the startup menu
-- require("alpha").setup(require("alpha.themes.dashboard").config)

-- [[color schemes]]
-- require('onedark').setup {
--     style = 'deep'
-- }
-- require('onedark').load()


-- [[ autocmd ]]
-- Triger `autoread` when files changes on disk
-- https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
-- https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
-- vim.cmd [[ autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
--             \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif ]]
-- Notification after file change
-- https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
-- vim.cmd [[ autocmd FileChangedShellPost *
--     \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None ]]