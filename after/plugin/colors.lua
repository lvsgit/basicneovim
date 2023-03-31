local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

-- Base colors
Color.new('darkcyan', '#004040')
Color.new('darkblue', '#1134A6')
Color.new('darkred', '#800000')
Color.new('gray', '#888888')
Color.new('darkgray', '#151515') -- slategray
Color.new('emeral', '#059142')
Color.new('violet', '#5e00bb')
Color.new('purple', '#6000a8')

Color.new('darkgreen', '#009706')
Color.new('white', '#cccdd1')
Color.new('darkblack', '#0a0a0a')
Color.new('black', '#101010')
Color.new('background', '#2c2c2c')
Color.new('grey', '#363636')
Color.new('lightgrey', '#4d4d4d')
Color.new('red', '#ff6347')
Color.new('pink', '#ff86b7')
Color.new('green', '#00e756')
Color.new('blue', '#29adff')
Color.new('yellow', '#ffd700')
Color.new('darkyellow', '#a9c79B')
Color.new('teal', '#0b925c')
Color.new('orange', '#FFA500')
Color.new('cyan', '#00B8BA')
Color.new('brown', "#be620a")
Color.new('purple', "#c54bcf")
Color.new('bpink', "#ff4394")
-- Cursor color
Color.new('cursor', '#002020')




Group.new('Visual', colors.none, colors.black, styles.reverse)
Group.new('CurSearch', colors.black, colors.blue, styles.none) -- Current search cursor
Group.new('IncSearch', colors.black, colors.red, styles.none)
Group.new('Search', colors.black, colors.red, styles.none)

-- DiffAdd, DiffChange, DiffDelete, DiffText

Group.new('Comment', colors.gray, colors.none, styles.italic + styles.bold)
Group.new('Constant', colors.red, colors.none, styles.none)
Group.new('String', colors.red, colors.none, styles.bold)
Group.new('Number', colors.red, colors.none, styles.none)
Group.new('Boolean', colors.red, colors.none, styles.bold + styles.italic)
Group.new('Float', colors.red, colors.none, styles.italic)
Group.new('Identifier', colors.emeral, colors.none, styles.none)
Group.new('Function', colors.blue, colors.none, styles.bold)
Group.new('Statement', colors.none, colors.none, styles.none)
Group.new('Conditional', colors.violet, colors.none, styles.bold + styles.italic)
Group.new('Repeat', colors.violet, colors.none, styles.bold + styles.italic)
Group.new('Label', colors.violet, colors.none, styles.bold + styles.italic)
Group.new('Operator', colors.cyan, colors.none, styles.bold)
Group.new('Keyword', colors.purple, colors.none, styles.bold)
Group.new('Exception', colors.red, colors.none, styles.bold + styles.italic)
Group.new('PreProc', colors.purple, colors.none, styles.none)
Group.new('Type', colors.cyan, colors.none, styles.bold)

Group.new('CursorLineNr', colors.white, colors.darkcyan, styles.bold)
Group.new('CursorLine', colors.none, colors.cursor, styles.none)
Group.new('Directory', colors.green, colors.none, styles.bold)
Group.new('ErrorMsg', colors.red, colors.none, styles.none)
Group.new('LineNr', colors.darkgray, colors.none, styles.none)
Group.new('Normal', colors.darkyellow, colors.none, styles.none)
Group.new('NormalFloat', colors.blue, colors.darkblack, styles.bold)
Group.new('Pmenu', colors.blue, colors.darkgray, styles.bold)
Group.new('PmenuSel', colors.none, colors.black, styles.reverse)
Group.new('SignColumn', colors.none, colors.none, styles.none)
Group.new('WinSeparator', colors.darkgray, colors.none, styles.none) -- Separator between windows split
Group.new('Title', colors.green, colors.none, styles.none)

-- nvim-tree
Group.new('NvimTreeNormal', colors.red, colors.darkblack, styles.bold)

-- Telescope
Group.new('TelescopeBorder', colors.blue, colors.none, styles.none)
Group.new('TelescopePromptBorder', colors.none, colors.none, styles.none)
Group.new('TelescopePromptPrefix', colors.black, colors.none, styles.none)
Group.new('TelescopeNormal', colors.none, colors.black, styles.none)
Group.new('TelescopePreviewTitle', colors.yellow, colors.black, styles.none)
Group.new('TelescopePromptTitle', colors.blue, colors.black, styles.none)
Group.new('TelescopeResultsTitle', colors.red, colors.black, styles.none)
Group.new('TelescopeSelection', colors.red, colors.black, styles.none)
Group.new('TelescopeResultsDiffAdd', colors.red, colors.black, styles.none)
Group.new('TelescopeResultsDiffChange', colors.red, colors.black, styles.none)
Group.new('TelescopeResultsDiffDelete', colors.red, colors.black, styles.none)

--Gitsigns
Group.new('GitSignsAdd', colors.darkgreen, colors.none, styles.bold)
Group.new('GitSignsChange', colors.blue, colors.none, styles.bold)
Group.new('GitSignDelete', colors.red, colors.none, styles.bold)
Group.new('DiffDelete', colors.red, colors.none, styles.bold)
Group.new('GitSignTopDelete', colors.red, colors.none, styles.bold)
Group.new('GitSignsUntracked', colors.yellow, colors.none, styles.bold)
Group.new('DiagnosticSignHint', colors.green, colors.none, styles.bold)
