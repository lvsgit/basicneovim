local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

keymap('n', 'x', '"_x')

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
--keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

-- Lspsaga
--keymap('n', '<leader>ln', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
--keymap('n', '<leader>ls', '<Cmd>Lspsaga show_diagnostic<CR>', opts)
--keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
--keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
--keymap('i', '<leader>lh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--keymap('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
--keymap('n', '<leader>lr', '<Cmd>Lspsaga rename<CR>', opts)

local codeaction = require("lspsaga.codeaction")
keymap("n", "<leader>la", function() codeaction:code_action() end, { silent = true })
keymap("v", "<leader>la", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, opts)
