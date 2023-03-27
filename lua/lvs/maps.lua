local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

keymap('', 'x', '"_x')

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'evbd')

-- Select all
keymap('n', '<C-a>', 'ggVG')

-- Save with root permission (not working for now)
vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap('n', 'te', ':tabedit', opts)
keymap('n', '<tab>', '<cmd>bnext<cr>', opts)
keymap('n', '<S-tab>', '<cmd>bprevios<cr>', opts)

-- Split window
keymap('n', 'ss', ':split<Return><C-w>w', opts)
keymap('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap('n', '<C-space>', '<C-w>w')
keymap('', '<C-h>', '<C-w>h')
keymap('', '<C-k>', '<C-w>k')
keymap('', '<C-j>', '<C-w>j')
keymap('', '<C-l>', '<C-w>l')

-- Resize window
keymap('n', '<C-left>', '<C-w><')
keymap('n', '<C-right>', '<C-w>>')
keymap('n', '<C-up>', '<C-w>+')
keymap('n', '<C-down>', '<C-w>-')

-- NvimTree
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts)

-- Lsp
keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)
keymap('n', 'gn', '<cmd>Lspsaga rename<cr>', opts)
keymap('n', 'ge', '<cmd>Lspsaga show_line_diagnostics<cr>', opts)
keymap('n', 'g[', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
keymap('n', 'g]', '<cmd>Lspsaga diagnostic_jump_prev<cr>', opts)
keymap('n', 'go', '<cmd>Lspsaga outline<cr>', opts)
keymap('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
keymap('n', 'ga', '<cmd>Lspsaga code_actions<cr>', opts)

-- Telescope
local builtin = require("telescope.builtin")
keymap('n', '<leader>sw', '<cmd>Telescope live_grep<cr>', opts)
keymap('n', '<leader>se', '<cmd>Telescope diagnostics<cr>', opts)
keymap('n', '<leader>sh', '<cmd>Telescope help_tags<cr>', opts)
keymap('n', '<leader>sb', '<cmd>Telescope buffers<cr>', opts)
keymap('n', '<leader>so', '<cmd>Telescope oldfiles<cr>', opts)
keymap('n', '<leader>sf', function() builtin.find_files({ no_ignore = false, hidden = true }) end, opts)
keymap('n', '<leader>sk', '<cmd>Telescope keymaps<cr>', opts)

-- Comment
keymap('n', '<leader>/', "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>", opts)
keymap('x', '<leader>/', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", opts)

-- Config and more
keymap('n', '<leader>bc', ':e $MYVIMRC | :cd %:p:h<cr>', opts)
