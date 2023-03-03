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
--
-- easymotion
vim.cmd [[map  <Leader>f <Plug>(easymotion-bd-f) ]]
vim.cmd [[nmap <Leader>f <Plug>(easymotion-overwin-f)]]

-- telescope-file-browser
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

-- symbols-outline.nvim
require("symbols-outline").setup()
vim.api.nvim_set_keymap(
  "n",
  "<space>so",
  ":SymbolsOutline\n",
  { noremap = true }
)
--  vim-fugitive
vim.cmd [[nmap <leader>gh :diffget //3<CR> ]]
vim.cmd [[nmap <leader>gf :diffget //2<CR> ]]
vim.cmd [[nmap <leader>gs :G<CR> ]]
vim.cmd [[nmap <leader>gc :G commit -m ""<left>]]
vim.cmd [[nmap <leader>gu :G push<CR> ]]

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
--
-- todo-comments.nvim
require("todo-comments").setup()

-- alpha-nvim
-- TODO: need to update the keyoard shortcuts on the startup menu
-- require("alpha").setup(require("alpha.themes.dashboard").config)

-- which-key
require("which-key").setup()
