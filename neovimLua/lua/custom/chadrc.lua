-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

-- M.ui = {
--    theme = "chadracula",
-- }

local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
  options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   }, 
  install = userPlugins,
  default_plugin_config_replace = {
    nvim_treesitter = "custom.config.treesiter",
  },
}

return M
