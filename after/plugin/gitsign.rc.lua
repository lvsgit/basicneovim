local status, git = pcall(require, 'gitsigns')
if (not status) then return end

git.setup({
  signs = {
    add = { text = '' },
    change = { text = '' },
    delete = { text = '' },
    topdelete = { text = '󰘣' },
    changedelete = { text = '󰌇' },
    untracked = { text = '' },
  },
})
