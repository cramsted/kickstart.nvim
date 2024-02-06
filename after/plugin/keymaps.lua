-- [[ Keyboard shortcuts ]]
--
-- moving between windows
-- vim.keymap.set('n', '<C-j>', '<C-W>j', { desc = "Select Window Down" })
-- vim.keymap.set('n', '<C-k>', '<C-W>k', { desc = "Select Window Up" })
-- vim.keymap.set('n', '<C-l>', '<C-W>l', { desc = "Select Window Right" })
-- vim.keymap.set('n', '<C-h>', '<C-W>h', { desc = "Select Window Left" })

-- resizing windows
vim.keymap.set({ 'n', 'v' }, '<C-Left>', ":vertical resize +3<CR>", { desc = "Move Window Border Left" })
vim.keymap.set({ 'n', 'v' }, '<C-Right>', ":vertical resize -3<CR>", { desc = "Move Window Border Right" })
vim.keymap.set({ 'n', 'v' }, '<C-Up>', ": resize -3<CR>", { desc = "Move Window Border Up" })
vim.keymap.set({ 'n', 'v' }, '<C-Down>', ": resize +3<CR>", { desc = "Move Window Border Down" })

-- split the current buffer
vim.keymap.set({ 'n', 'v' }, '<leader>\\', ':vsp<CR>', { desc = "Split Buffer Vert" })
vim.keymap.set({ 'n', 'v' }, '<leader>-', ':sp<CR>', { desc = "Split Buffer Horiz" })

-- Nvim config quick access
vim.keymap.set('n', '<leader>R', ":luafile %<CR>", { desc = "[R]un current lua file" })
vim.keymap.set('n', '<leader>ci', ":e ~/.config/nvim/init.lua<CR>", { desc = "Open [C]onfig file [i]nit.lua" })
vim.keymap.set('n', '<leader>cP', ":e ~/.config/nvim/lua/custom/plugins/",
    { desc = "Open [C]onfig directory for [p]lugins" })
vim.keymap.set('n', '<leader>cp', ":e ~/.config/nvim/after/plugin/plugin-configs.lua<CR>",
    { desc = "Open [C]onfig file for [p]lugins" })
vim.keymap.set('n', '<leader>ck', ":e ~/.config/nvim/after/plugin/keymaps.lua<CR>",
    { desc = "Open [C]onfig file [k]eymaps.lua" })
vim.keymap.set('n', '<leader>cd', ":e ~/.config/nvim/after/plugin/autocmds.lua<CR>",
    { desc = "Open [C]onfig file autocm[d]s.lua" })
vim.keymap.set('n', '<leader>cs', ":e ~/.config/nvim/after/plugin/settings.lua<CR>",
    { desc = "Open [C]onfig file [s]ettings.lua" })
vim.keymap.set('n', '<leader>cc', ":e ~/.config/nvim/after/plugin/colors.lua<CR>",
    { desc = "Open [C]onfig file [c]olors.lua" })

-- write shortcut
vim.keymap.set({ 'n', 'v' }, '<leader>w', ":w<CR>", { desc = "Write Buffer" })

-- select all
vim.keymap.set('n', '<leader>V', 'ggVG', { desc = "Select All" })

-- find and replace all matching instances of selected text
vim.keymap.set('v', '<C-r>', '"hy:%s/<C-r>h/<C-r>h/g<left><left>', { desc = "Find/Replace Selected Text" })

-- search visually selected text
-- vim.cmd [[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]]
--
-- remove highlight from searched text
-- vim.keymap.set('n', '<leader>/', ':noh<CR>', {desc = "Dehighlight Searched Text"})

-- force quit vim/current window
vim.keymap.set({ 'n', 'v' }, '<C-q>', ":q!<CR>")

-- LSP
vim.keymap.set('n', '<leader>pi', ":LspInfo<CR>", { desc = "LS[P] [I]nfo" })
vim.keymap.set('n', '<leader>pr', ":LspRestart<CR>", { desc = "LS[P] [R]estart" })
vim.keymap.set('n', '<leader>ps', ":LspStart<CR>", { desc = "LS[P] [S]tart" })
vim.keymap.set('n', '<leader>po', ":LspStop<CR>", { desc = "LS[P] St[O]p" })
vim.keymap.set('n', '<leader>pl', ":LspLog<CR>", { desc = "LS[P] [L]og" })

-- Telescope
vim.keymap.set('n', '<leader>sa', ':Telescope find_files no_ignore=true hidden=true<CR>',
    { desc = '[S]earch [A]ll files' })
vim.keymap.set('n', '<leader>sr', ':Telescope resume<CR>', { desc = '[S]earch [R]esume' })
-- gen.lua
vim.keymap.set({ 'n', 'v' }, '<leader>ia', ':Gen Ask<CR>', { desc = "A[I] [A]sk" })
vim.keymap.set({ 'n', 'v' }, '<leader>ich', ':Gen Change<CR>', { desc = "A[I] [C]hange" })
vim.keymap.set({ 'n', 'v' }, '<leader>icc', ':Gen Change_Code<CR>', { desc = "A[I] [C]hange [C]ode" })
vim.keymap.set({ 'n', 'v' }, '<leader>ih', ':Gen Chat`<CR>', { desc = "A[I] C[h]at" })
vim.keymap.set({ 'n', 'v' }, '<leader>iee', ':Gen Enhance_Code<CR>', { desc = "A[I] [E]nhance code" })
vim.keymap.set({ 'n', 'v' }, '<leader>iew', ':Gen Enhance_Wording<CR>', { desc = "A[I] [E]nhace [W]ording" })
vim.keymap.set({ 'n', 'v' }, '<leader>ieg', ':Gen Enhance_Grammar_Spelling<CR>', { desc = "A[I] [E]nhance [G]rammar" })
vim.keymap.set({ 'n', 'v' }, '<leader>ig', ':Gen Generate<CR>', { desc = "A[I] [G]enerate" })
vim.keymap.set({ 'n', 'v' }, '<leader>ir', ':Gen Review_Code<CR>', { desc = "A[I] [R]eview Code" })
vim.keymap.set({ 'n', 'v' }, '<leader>is', ':Gen Summarize<CR>', { desc = "A[I] [S]ummarize" })
