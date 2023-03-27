local status, whichkey = pcall(require, 'which-key')
if (not status) then return end

whichkey.setup({
  icons = {
    separator = '󰁕',
    group = '+',
  },
  window = {
    border = 'none',
    winblend = 10,
  }
})

local tables = {
  ['<leader>b'] = {
    name = '+basic config',
    c = { name = 'neovim' },
  },
  ['<leader>e'] = { name = 'File explorer' },
  ['<leader>s'] = {
    name = '+search',
    b = { name = 'buffer' },
    e = { name = 'diagostics' },
    f = { name = 'file' },
    h = { name = 'help' },
    k = { name = 'keymap' },
    o = { name = 'recent files' },
    w = { name = 'all' },
  },
}

whichkey.register(tables)
