local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
  ui = {
    winblend = 15,
  },
  diagnostic = {
    on_insert = false,
  },
  lightbulb = {
    enable = false,
  }
})



-- local hl = vim.api.nvim_set_hl
-- local sagawin = require('lspsaga.lspkind').get_kind_group()
-- for _, i in pairs(sagawin) do
--   hl(0, i, { bg = '#004040' })
-- end

-- hl(0, 'Winbar', { bg = '#004040' })
-- hl(0, 'SagaWinbarFolder', { fg = '#00e756', bg = '#004040' })
-- hl(0, 'SagaWinbarFoldername', { fg = '#00e756', bg = '#004040' })
