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
