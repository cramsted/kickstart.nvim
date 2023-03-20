-- [[ Settings ]]
vim.cmd [[set relativenumber]]
-- vim.cmd [[set hlsearch]] -- overriding the default for kickstart.nvim
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
vim.cmd [[set cursorline]]
vim.cmd [[set updatetime=50]]
-- handles tabs and spaces correctly for pasted in code
vim.cmd [[set pastetoggle=<F2>]]
-- closing bracket support
-- vim.cmd [[inoremap { {}<Esc>ha]]
-- vim.cmd [[inoremap ( ()<Esc>ha]]
-- vim.cmd [[inoremap [ []<Esc>ha]]
-- vim.cmd [[inoremap " ""<Esc>ha]]
-- vim.cmd [[inoremap ' ''<Esc>ha]]
-- vim.cmd [[inoremap ` ``<Esc>ha]]
vim.opt.termguicolors = true
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
