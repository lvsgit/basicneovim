local status, lualine = pcall(require, "lualine")
if (not status) then return end
local colors = {
  darkcyan = '#004040',
  purple = '#6000a8',
  white = '#cccdd1',
  black = '#000000',
  red = '#cf4327',
  darkgreen = '#009706',
  darkblue = '#067dcd',
  orange = '#FFA500',
  tranferent = '#00000000'
}


local custom = {
  normal = {
    a = { fg = colors.black, bg = colors.darkgreen, gui = 'bold' },
    b = { fg = colors.white, bg = colors.darkcyan, gui = 'bold' },
    c = { fg = colors.orange, bg = colors.tranferent }
  },
  insert = {
    a = { fg = colors.black, bg = colors.darkblue, gui = 'bold' },
    b = { fg = colors.white, bg = colors.darkcyan, gui = 'bold' },
    c = { fg = colors.orange, bg = colors.tranferent }
  },
  visual = {
    a = { fg = colors.white, bg = colors.purple, gui = 'bold' },
    b = { fg = colors.white, bg = colors.darkcyan, gui = 'bold' },
    c = { fg = colors.orange, bg = colors.tranferent }
  },
  replace = {
    a = { fg = colors.black, bg = colors.red, gui = 'bold' },
    b = { fg = colors.white, bg = colors.darkcyan, gui = 'bold' },
    c = { fg = colors.orange, bg = colors.tranferent }
  },
  -- inactive = {
  --   a = { fg = colors.black, bg = colors.green },
  --   b = { fg = colors.white, bg = colors.darkcyan },
  --   c = { fg = colors.orange, bg = colors.tranferent }
  -- },
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = custom,
    section_separators = { left = '', right = '' },
    -- section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    -- component_separators = { left = '', right = '' },
    disabled_filetypes = { 'veil' }
  },
  refresh = {
    statusline = 200,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0            -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      {
        'diagnostics',
        sources = { "nvim_diagnostic" },
        symbols = {
          error = ' ', --
          warn = ' ',
          info = ' ',
          hint = ' '
        }
      },
      --'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  -- inactive_sections = {
  --   lualine_a = {},
  --   lualine_b = {},
  --   lualine_c = { {
  --     'filename',
  --     file_status = true, -- displays file status (readonly status, modified status)
  --     path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
  --   } },
  --   lualine_x = { 'location' },
  --   lualine_y = {},
  --   lualine_z = {}
  -- },
  tabline = {},
  extensions = {} --  'fugitive'
}
