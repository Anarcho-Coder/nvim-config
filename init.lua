require("nvim-option")
require("plugin_config.plugins")
require("plugin_config.lualine")
require("plugin_config.nvimtree")
require("plugin_config.treesitter")
require("plugin_config.telescope")

-- NEODEV MUST BE SETUP BEFORE LSPCONFIG
require("plugin_config.neodev")
require("plugin_config.lspconfig")

require("plugin_config.barbar")
require("plugin_config.nvimcmp")
