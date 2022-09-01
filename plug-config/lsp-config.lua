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

local servers = {'pyright', 'tsserver', 'jsonls'}

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
end

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach
  }
end 


