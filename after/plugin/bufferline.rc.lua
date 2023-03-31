local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

-- bufferline.setup({})
bufferline.setup({
  options = {
    separator_style = 'thin', -- slant, slope, thick, thin,
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    indicator = {
      style = "none",
    },
    max_name_length = 10,
    tab_size = 12,
  },
  highlights = {
    -- indicator_selected = {
    --   bg = '#009706',
    -- },
    -- separator = {
    --   -- fg = '#000b16',
    --   fg = '#ffffff',
    --   bg = '#002020',
    -- },
    -- separator_visible = {
    --   fg = '#ffffff',
    --   bg = '#002020',
    -- },
    -- separator_selected = {
    --   -- fg = '#000b16',
    --   fg = '#ffffff',
    --   bg = '#004b56',
    -- },
    -- background = {
    --   fg = '#657b83',
    --   bg = '#002020'
    -- },
    -- buffer_visible = {
    --   fg = '#657b83',
    --   bg = '#002020'
    -- },
    -- buffer_selected = {
    --   fg = '#ffffff',
    --   bg = '#004b56',
    --   bold = true,
    -- },
    -- fill = {
    --   bg = '#002020', --'#002b36'
    -- }
    indicator_selected = {
      bg = '#009706',
    },
    separator = {
      fg = '#ffffff',
      bg = 'none',
    },
    separator_visible = {
      fg = '#ffffff',
      bg = '#002020',
    },
    separator_selected = {
      fg = '#ffffff',
      bg = '#004b56',
    },
    background = {
      fg = '#657b83',
      bg = 'none'
    },
    buffer_visible = {
      fg = '#657b83',
      bg = 'none'
    },
    buffer_selected = {
      fg = '#009706',
      bg = '#101010',
      bold = true,
    },
    fill = {
      bg = 'none', --'#002b36'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
