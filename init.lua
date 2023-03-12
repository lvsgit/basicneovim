local opt = vim.opt
local keymap = vim.keymap.set
local arg = { silent = true, noremap = true }
vim.cmd("autocmd!")

opt.encoding = 'utf-8'
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.swapfile = false
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false
opt.clipboard:append { 'unnamedplus' }
opt.undofile = true
opt.number = true
opt.cmdheight = 0

vim.opt.fillchars = { eob = " " }

keymap('n', 'ss', '<cmd>split<cr>', arg)
keymap('n', 'sv', '<cmd>vsplit<cr>', arg)
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')
keymap('n', '<C-Right>', '<C-w><')
keymap('n', '<C-Left>', '<C-w>>')
keymap('n', '<C-Up>', '<C-w>-')
keymap('n', '<C-Down>', '<C-w>+')
