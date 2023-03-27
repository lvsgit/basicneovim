local status, icon = pcall(require, 'nvim-web-devicons')
if (not status) then return end

icon.setup {
  colors_icons = true,
}
