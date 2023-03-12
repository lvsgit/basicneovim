local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

-- Base colors
Color.new('cyan', '#00CED1')
Color.new('darkcyan', '#008080')
Color.new('white', '#FFFFFF')
Color.new('black', '#000000')
Color.new('blue', '#4169E1')
Color.new('darkblue', '#173fac')
Color.new('red', '#FF6347') -- tomato
Color.new('darkred', '#800000')
Color.new('gray', '#888888')
Color.new('darkgray', '#353535') -- slategray
Color.new('green', '#32CD32')
Color.new('emeral', '#50C878')
Color.new('violet', '#7F00FF')
Color.new('purple', '#9400D3')
Color.new('yellow', '##FFD700')
Color.new('orange', '#FFA500')

-- Cursor color
Color.new('cursor', '#005050')


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
Group.new('Function', colors.purple, colors.none, styles.bold)
Group.new('Statement', colors.none, colors.none, styles.none)
Group.new('Conditional', colors.violet, colors.none, styles.bold + styles.italic)
Group.new('Repeat', colors.violet, colors.none, styles.bold + styles.italic)
Group.new('Label', colors.violet, colors.none, styles.bold + styles.italic)
Group.new('Operator', colors.cyan, colors.none, styles.bold)
Group.new('Keyword', colors.orange, colors.none, styles.bold)
Group.new('Exception', colors.red, colors.none, styles.bold + styles.italic)

Group.new('CursorLineNr', colors.white, colors.darkcyan, styles.bold)
Group.new('CursorLine', colors.none, colors.cursor, styles.none)
Group.new('Directory', colors.green, colors.none, styles.none)
Group.new('ErrorMsg', colors.red, colors.none, styles.none)
Group.new('LineNr', colors.darkgray, colors.none, styles.none)
Group.new('Normal', colors.none, colors.none, styles.none)
Group.new('NormalFloat', colors.blue, colors.darkgray, styles.bold)
Group.new('Pmenu', colors.blue, colors.darkgray, styles.bold)
Group.new('PmenuSel', colors.none, colors.black, styles.reverse)
Group.new('SignColumn', colors.none, colors.none, styles.none)
Group.new('WinSeparator', colors.darkgray, colors.none, styles.none) -- Separator between windows split
