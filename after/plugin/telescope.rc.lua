local status, tele = pcall(require, 'telescope')
if not status then return end

tele.setup {
  defaults = {
    -- layout_strategy = 'center',
    sorting_strategy = "ascending",
    -- layout_strategy = "bottom_pane",
    -- layout_strategy = "center",
    prompt_prefix = ' ',
    selection_caret = '󰄾 ',
    entry_prefix = ' ',
  },
  -- other configuration values here
}

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
-- our picker function: colors
local colors = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "colors",
    finder = finders.new_table {
      results = { "red", "green", "blue" }
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end

-- colors(require("telescope.themes").get_dropdown {})
