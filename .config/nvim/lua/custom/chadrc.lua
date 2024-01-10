---@type ChadrcConfig
local M = {}

M.ui = { 
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal

    -- default/round/block/arrow (separators work only for "default" statusline theme;
    -- round and block will work for the minimal theme only)
    separator_style = "arrow",
    overriden_modules = nil,
  },

  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },

  -- ...other options
  theme = 'rosepine'
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
