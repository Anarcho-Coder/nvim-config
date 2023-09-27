local lspconfig = require("lspconfig")
local keymap = vim.keymap.set
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup{
  ensure_installed = {"lua_ls", "clangd"}
}

-- Keymaps

local on_attach = function(_, _)
  keymap('n', '<leader>rn', vim.lsp.buf.rename, {})
  keymap('n', '<leader>ca', vim.lsp.buf.code_action, {})

  keymap('n', 'gd', vim.lsp.buf.definition, {})
  keymap('n', 'gi', vim.lsp.buf.implementation, {})
  keymap('n', 'gr', require('telescope.builtin').lsp_references, {})
  keymap('n', 'K', vim.lsp.buf.hover, {})
end

-- Language Setuo

lspconfig.lua_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false
      }
    }
  }
}
lspconfig.clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
