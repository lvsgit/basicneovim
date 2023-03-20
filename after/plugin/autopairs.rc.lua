local status, autopair = pcall(require, 'nvim-autopairs')
if (not status) then return end

autopair.setup({})
