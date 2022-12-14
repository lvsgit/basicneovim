-- init.lua
local options = {
  swapfile = false,
  termguicolor = true,
  backup = false,
  clipboard = "unamedplus",
  fileencoding = "utf-8",
  mouse = 'a',
  undofile = true,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  wrap = false,
  inccommand = "split",
  list = false,
  number = true,
}

for i, j in pairs(options) do
  vim.opt[i] = j
end

vim.opt.fillchars = { eob = " " _}
