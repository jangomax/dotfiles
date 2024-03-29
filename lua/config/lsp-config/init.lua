local nvim_lsp = require('lspconfig')

--[[
   [protocol.CompletionItemKind = {
   [  '', -- Text
   [  '', -- Method
   [  '', -- Function
   [  '', -- Constructor
   [  '', -- Field
   [  '', -- Variable
   [  '', -- Class
   [  'ﰮ', -- Interface
   [  '', -- Module
   [  '', -- Property
   [  '', -- Unit
   [  '', -- Value
   [  '', -- Enum
   [  '', -- Keyword
   [  '﬌', -- Snippet
   [  '', -- Color
   [  '', -- File
   [  '', -- Reference
   [  '', -- Folder
   [  '', -- EnumMember
   [  '', -- Constant
   [  '', -- Struct
   [  '', -- Event
   [  'ﬦ', -- Operator
   [  '', -- TypeParameter
   [}
   ]]

local servers = {
   {
      name = 'pyright',
   },
   {
      name = 'tsserver',
   },
   {
      name = 'jsonls',
   },
   {
     name = 'sumneko_lua',
     settings = {
      Lua = {
            diagnostics = {
               globals = { 'vim' }
            },
            workspace = {
               library = vim.api.nvim_get_runtime_file('', true)
            }
         }
      }
   },
   {
      name = 'jdtls'
   },
   {
      name = 'clangd'
   },
   {
      name = 'asm_lsp',
      settings = {
         filetype = { 'asm' }
      }
   }
}

local signs = {
   { name = "DiagnosticSignError", text = "" },
   { name = "DiagnosticSignWarn", text = "" },
   { name = "DiagnosticSignHint", text = "" },
   { name = "DiagnosticSignInfo", text = "" },
}

local config = {
   virtual_text = false,
   signs = {
      active = signs
   },
   update_in_insert = true,
   underline = true,
   severity_sort = true,
   float = {
      focuable = false,
      style = 'minimal',
      border = 'rounded',
      source = 'always',
      header = '',
      prefix = ''
   }
}

vim.diagnostic.config(config)

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<C-n>', '<cmd>lua vim.lsp.buf.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<C-p>', '<cmd>lua vim.lsp.buf.goto_next()<CR>', opts)
  buf_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float(0, { scope = "line", border = "rounded" })<CR>', opts)
end

for _, lsp in ipairs(servers) do
   if lsp.settings then
      nvim_lsp[lsp.name].setup {
         on_attach = on_attach,
         settings = lsp.settings
      }
   else
      nvim_lsp[lsp.name].setup {
         on_attach = on_attach,
      }
   end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
