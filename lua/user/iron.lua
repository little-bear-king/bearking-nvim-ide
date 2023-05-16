local M = {
  'hkupty/iron.nvim'
}

local config = {
    -- Whether a repl should be discarded or not
  scratch_repl = true,
  -- Your repl definitions come here
  repl_definition = {
    sh = {
      -- Can be a table or a function that
      -- returns a table (see below)
      command = {"bash"}
    }
  },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = require('iron.view').bottom(40),
}

-- Iron doesn't set keymaps by default anymore.
-- You can set them here or manually add keymaps to the functions in iron.core
-- If the highlight is on, you can change how it lookup_section
-- For the available options, check nvim_set_hllocal

local keymaps = {
  send_motion = "<space>sc",
  visual_send = "<space>sc",
  send_file = "<space>sf",
  send_line = "<space>sl",
  send_mark = "<space>sm",
  mark_motion = "<space>mc",
  mark_visual = "<space>mc",
  remove_mark = "<space>md",
  cr = "<space>s<cr>",
  interrupt = "<space>s<space>",
  exit = "<space>sq",
  clear = "<space>cl"
}

local highlight = {
  italic = true,
  ignore_blank_lines = true -- ignore blank lines when sending visual select lines
}




-- Set up how the REPL Opens
local view = require("iron.view")
local iron = require("iron.core")

function M.setup()
  -- iron.setup {...
  iron.setup{
    -- config
    config,
    -- Keymaps
    keymaps,
    -- Highlight
    highlight
  }
end

--
-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')

-- local repl_open_cmd = view.split("40%", {
--   winfixwidth = false,
--   winfixheight = false,
--   -- any window-local configuration can be used here
--   number = true
-- })
return M
