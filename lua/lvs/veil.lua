local status, builtin = pcall(require, "veil.builtin")
if (not status) then return end
local utils = require('veil.utils')

local custom = {
  Rendered = {
    hl = '#00ff00',
  },
  sections = {
    builtin.sections.animated(builtin.headers.frames_nvim, {
      hl = { fg = "#5de4c7" },
    }),
    builtin.sections.buttons({
      {
        icon = "",
        text = "Find Files",
        shortcut = "f",
        callback = function()
          require("telescope.builtin").find_files()
        end,
      },
      {
        icon = "",
        text = "Find Word",
        shortcut = "w",
        callback = function()
          require("telescope.builtin").live_grep()
        end,
      },
      {
        icon = "",
        text = "Recent files",
        shortcut = "r",
        callback = function()
          require("telescope.builtin").oldfiles()
        end,
      },
      {
        icon = "",
        text = "Configg",
        shortcut = "n",
        callback = function()
          vim.cmd [[e $MYVIMRC | :cd %:p:h]]
        end,
      },
    }),
    builtin.sections.oldfiles(),

  },
  mappings = {},
  startup = true,
  listed = false
}
return custom
